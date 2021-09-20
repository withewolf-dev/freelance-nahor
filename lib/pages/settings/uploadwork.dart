import 'dart:io';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kilo/repository/freelance/freelancefirestore.dart';
import 'package:kilo/widgets/universal_appbar.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:kilo/widgets/upload/display-work.dart';

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

      try {
        await task;
        String url = await uploadRef.getDownloadURL();
        await updateWorkMedia(imageUrl: url);

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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                if (progress != null) LinearProgressIndicator(),
                Text(
                  "upload work  url ",
                  textDirection: TextDirection.ltr,
                ),
                Displaywork(
                  imageUrl:
                      "https://images.unsplash.com/photo-1611465577672-8fc7be1dc826?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80",
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: progress == null
            ? () async {
                var imagecoun = await checkMediaLimit();
                if (imagecoun <= 3) {
                  uploadFile();
                }
              }
            : null,
        child: const Icon(Icons.upload_file_sharp),
        backgroundColor: Colors.green,
      ),
    );
  }
}
