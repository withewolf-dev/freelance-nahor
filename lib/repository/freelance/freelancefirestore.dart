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

CollectionReference freelanceRqst =
    FirebaseFirestore.instance.collection("freelanceRqst");

final user = FirebaseAuth.instance.currentUser;
final String docId = user!.uid.toString().substring(8);

Future<void> addUserType(userType, uid) {
  return userRole
      .add({'userType': userType, 'uid': uid})
      .then((value) => print("User type Added"))
      .catchError((error) => print("Failed to add user: $error"));
}

Future<void> sendReqst(
  String phonenum,
  String descrp,
  String address,
) {
  return freelanceRqst
      .add({
        'phonenum': phonenum,
        'descrp': descrp,
        'address': address,
        'id': user!.uid
      })
      .then((value) => print("send request "))
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

Future<void> updateFees(String fees, String duration) {
  return freelanceUserInfo
      .doc(docId)
      .update({
        'fees': fees,
        'duration': duration,
      })
      .then((value) => print("User Updated"))
      .catchError((error) => print("Failed to update user: $error"));
}

Future<void> updateCategory(int selectedIndex, String categoryName) {
  return freelanceUserInfo
      .doc(docId)
      .update({
        'selectedIndex': selectedIndex,
        'categoryName': categoryName,
      })
      .then((value) => print("User Updated"))
      .catchError((error) => print("Failed to update user: $error"));
}

Future<void> accountActive(bool isActive) {
  return freelanceUserInfo
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

    return snapshot.docs.isNotEmpty;
  } on FirebaseException catch (e) {
    print(e);
  }
}

Future<void> createFreelanceInfo(
    String name, String uid, String url, String id) async {
  return freelanceUserInfo.doc(id).set({
    "bio": "",
    "bioTitle": "",
    "categoryName": "",
    "duration": "",
    "fees": "",
    "isActive": true,
    "name": name,
    "selectedIndex": 0,
    "uid": uid,
    "url": url
  });
}

Future<void> updatePrice(String price) {
  return freelanceUserInfo
      .doc(docId)
      .update({"price": price})
      .then((value) => print("price updated"))
      .catchError((onError) => print(onError));
}
