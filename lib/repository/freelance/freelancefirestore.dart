import 'package:cloud_firestore/cloud_firestore.dart';

CollectionReference freelanceUser =
    FirebaseFirestore.instance.collection('freelance');

CollectionReference users = FirebaseFirestore.instance.collection('users');

Future<void> addUser(bio, hometown, title) {
  return freelanceUser
      .add({
        'bio': bio,
        'hometown': hometown,
        'title': title,
        // 'uuid': uuid,
        // 'fee_duration': feesduration
      })
      .then((value) => print("User Added"))
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
