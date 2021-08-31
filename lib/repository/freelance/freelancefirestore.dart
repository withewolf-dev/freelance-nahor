import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:io';
import 'dart:async';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kilo/bloc/uploadwork/uploadwork_bloc.dart';

CollectionReference freelanceUser =
    FirebaseFirestore.instance.collection('freelance');

CollectionReference users = FirebaseFirestore.instance.collection('users');

CollectionReference userRole =
    FirebaseFirestore.instance.collection("userRole");

Future addUserType(userType, uid) {
  return userRole
      .add({'userType': userType, 'uid': uid})
      .then((value) => print("User type Added"))
      .catchError((error) => print("Failed to add user: $error"));
}

Future<void> updateBio(String bio, String bioTitle, String docId) {
  return users
      .doc(docId)
      .update({
        'bio': bio,
        'bio_title': bioTitle,
      })
      .then((value) => print("User Updated"))
      .catchError((error) => print("Failed to update user: $error"));
}

Future<void> updateFees(int fees, String interval, String docId) {
  return users
      .doc(docId)
      .update({
        'fees': fees,
        'interval': interval,
      })
      .then((value) => print("User Updated"))
      .catchError((error) => print("Failed to update user: $error"));
}

Future<void> updateCategory(String category, String subCategory, String docId) {
  return users
      .doc(docId)
      .update({
        'category': category,
        'subcategory': subCategory,
      })
      .then((value) => print("User Updated"))
      .catchError((error) => print("Failed to update user: $error"));
}

Future<void> accountActive(bool isActive, String docId) {
  return users
      .doc(docId)
      .update({
        'isActive': isActive,
      })
      .then((value) => print("User Updated"))
      .catchError((error) => print("Failed to update user: $error"));
}

class Storage {
  String? url;
  final ImagePicker _picker = ImagePicker();

  Future<firebase_storage.UploadTask> uploadFile() async {
    final imageFile = await _picker.pickImage(source: ImageSource.gallery);
    File file = File(imageFile!.path);

    firebase_storage.UploadTask task = firebase_storage.FirebaseStorage.instance
        .ref(imageFile.name)
        .putFile(file);

    return task;
  }
}
