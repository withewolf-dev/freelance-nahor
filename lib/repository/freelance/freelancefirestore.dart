import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';

CollectionReference freelanceUser =
    FirebaseFirestore.instance.collection('freelance');

CollectionReference users = FirebaseFirestore.instance.collection('users');

CollectionReference userRole =
    FirebaseFirestore.instance.collection("userRole");

CollectionReference freelanceUserInfo =
    FirebaseFirestore.instance.collection("freelanceUserInfo");

final user = FirebaseAuth.instance.currentUser;
final String docId = user!.uid.toString().substring(8);

Future addUserType(userType, uid) {
  return userRole
      .add({'userType': userType, 'uid': uid})
      .then((value) => print("User type Added"))
      .catchError((error) => print("Failed to add user: $error"));
}

Future<void> updateBio(String bio, String bioTitle) {
  return freelanceUserInfo
      .doc(docId)
      .update({
        'uid': user!.uid,
        'bio': bio,
        'bioTitle': bioTitle,
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

doesFieldExist(uid) async {
  try {
    final snapshot = await userRole.where("uid", isEqualTo: uid).get();

    print("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ${snapshot.docs.isNotEmpty}");

    return snapshot.docs.isNotEmpty;
  } on FirebaseException catch (e) {
    print(e);
  }
}
