import 'dart:io';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kilo/bloc/uploadwork/uploadwork_bloc.dart';
import 'package:kilo/repository/freelance/freelancefirestore.dart';
import 'package:kilo/widgets/universal_appbar.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class UploadWorkPage extends StatefulWidget {
  UploadWorkPage({Key? key}) : super(key: key);

  @override
  _UploadWorkPageState createState() => _UploadWorkPageState();
}

class _UploadWorkPageState extends State<UploadWorkPage> {
  int? x;

  double? progress;

  final ImagePicker _picker = ImagePicker();

  Future<int?> uploadFile() async {
    final imageFile = await _picker.pickImage(source: ImageSource.gallery);
    File file = File(imageFile!.path);

    firebase_storage.UploadTask task = firebase_storage.FirebaseStorage.instance
        .ref(imageFile.name)
        .putFile(file);

    task.snapshotEvents.listen((firebase_storage.TaskSnapshot snapshot) {
      print('Task state: ${snapshot.state}');
      print(
          'Progress: ${(snapshot.bytesTransferred / snapshot.totalBytes) * 100} %');
      setState(() {
        progress = (snapshot.bytesTransferred / snapshot.totalBytes) * 100;
      });
      print(progress);
    }, onError: (e) {
      print(task.snapshot);

      if (e.code == 'permission-denied') {
        print('User does not have permission to upload to this reference.');
      }
    });

    try {
      await task;
      print('Upload complete.');
    } on firebase_storage.FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        print('User does not have permission to upload to this reference.');
      }
      // ...
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UniversalAppBar(),
      body: BlocListener<UploadworkBloc, UploadworkState>(
        listener: (context, state) {
          // TODO: implement listener
          if (state is UploadProgress) {
            print("ASasdasfed");
            print(state.progress);
            LinearProgressIndicator(value: 30);
          }

          if (state is UploadWorkSuccess) {
            print("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
          }
        },
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                LinearProgressIndicator(
                  value: progress != null ? progress : null,
                ),
                Text(
                  "upload work  url ",
                  textDirection: TextDirection.ltr,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
          //BlocProvider.of<UploadworkBloc>(context).add(Getphoto());
          uploadFile();
        },
        child: const Icon(Icons.upload_file_sharp),
        backgroundColor: Colors.green,
      ),
    );
  }
}
