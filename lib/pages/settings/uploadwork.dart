import 'dart:io';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
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

    if (imageFile != null) {
      File file = File(imageFile.path);

      firebase_storage.Reference uploadRef =
          firebase_storage.FirebaseStorage.instance.ref(imageFile.name);

      firebase_storage.Reference downloadRef =
          firebase_storage.FirebaseStorage.instance.ref(imageFile.path);

      print(downloadRef);
      print("XXXXXXXXXXXXXXXXXXXXXXXXX");
      print(imageFile.path);
      print(imageFile.name);

      firebase_storage.UploadTask task = uploadRef.putFile(file);

      task.snapshotEvents.listen((firebase_storage.TaskSnapshot snapshot) {
        setState(() {
          progress = (snapshot.bytesTransferred / snapshot.totalBytes) * 100;
        });
      }, onError: (e) {
        if (e.code == 'permission-denied') {
          print('User does not have permission to upload to this reference.');
        }
      });

      //final downloadurl = await downloadRef.getDownloadURL();

      print("object");
      //print(downloadurl);

      try {
        await task;
        String url = await uploadRef.getDownloadURL();
        print(url);
        setState(() {
          progress = null;
        });
      } on firebase_storage.FirebaseException catch (e) {
        if (e.code == 'permission-denied') {
          print('User does not have permission to upload to this reference.');
        }
        // ...
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UniversalAppBar(),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              if (progress != null) LinearProgressIndicator(),
              Text(
                "upload work  url ",
                textDirection: TextDirection.ltr,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: progress == null
            ? () {
                uploadFile();
              }
            : null,
        child: const Icon(Icons.upload_file_sharp),
        backgroundColor: Colors.green,
      ),
    );
  }
}
