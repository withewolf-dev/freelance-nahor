import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';
import 'package:nanoid/nanoid.dart';

import 'package:firebase_storage/firebase_storage.dart';

CollectionReference freelanceUser =
    FirebaseFirestore.instance.collection('freelance');

CollectionReference users = FirebaseFirestore.instance.collection('users');

CollectionReference userRole =
    FirebaseFirestore.instance.collection("userRole");

CollectionReference freelanceUserInfo =
    FirebaseFirestore.instance.collection("freelanceUserInfo");

CollectionReference freelanceRqst =
    FirebaseFirestore.instance.collection("freelanceRqst");

CollectionReference workmedia =
    FirebaseFirestore.instance.collection("workmedia");

CollectionReference verification =
    FirebaseFirestore.instance.collection("verification");

final user = FirebaseAuth.instance.currentUser;
final String docId = user!.uid.toString().substring(8);

final newdocID = nanoid(10);

Future<void> addUserType(userType, uid) {
  return userRole
      .add({'userType': userType, 'uid': uid})
      .then((value) => print("User type Added"))
      .catchError((error) => print("Failed to add user: $error"));
}

Future<void> sendReqst({
  required String phone,
  required String descrp,
  required String address,
  required String toId,
}) {
  return freelanceRqst
      .add({
        'phonenum': phone,
        'descrp': descrp,
        'address': address,
        'fromId': user!.uid,
        'toId': toId,
        'type': "request",
        'name': user!.displayName!.split(" ").first,
        'time': FieldValue.serverTimestamp(),
        'docId': newdocID,
      })
      .then((value) => print("send request "))
      .catchError((error) => print("Failed to add user: $error"));
}

Future<void> responseToReqst(
    {required bool accepted,
    required String toId,
    required String responseId}) {
  return freelanceRqst
      .add({
        'accepted': accepted,
        'fromId': user!.uid,
        'toId': toId,
        'type': "response",
        'name': user!.displayName!.split(" ").first,
        'time': FieldValue.serverTimestamp(),
        'responseId': responseId,
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
      .then((value) => print("User Updated "))
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
      .then((value) => print("User Updated ${user!.uid}"))
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
    {String? name,
    String? docId,
    String? url,
    String? id,
    List? keyword}) async {
  return freelanceUserInfo.doc(docId).set({
    "bio": "",
    "bioTitle": "",
    "categoryName": "",
    "duration": "",
    "fees": "",
    "isActive": false,
    "name": name,
    "selectedIndex": 0,
    "uid": id,
    "url": url,
    "keyword": keyword,
  });
}

Future<void> updatePrice(String price) {
  return freelanceUserInfo
      .doc(docId)
      .update({"price": price})
      .then((value) => print("price updated"))
      .catchError((onError) => print(onError));
}

Future<void> updateWorkMedia({required String? imageUrl}) async {
  try {
    return await workmedia.doc(docId).update({
      "images": FieldValue.arrayUnion([imageUrl])
    });
  } catch (e) {
    print(e);
  }
}

checkMediaLimit() async {
  var imageCount = [];
  try {
    final snapshot = await workmedia.where("uid", isEqualTo: user!.uid).get();

    imageCount = snapshot.docs[0]["images"];
  } catch (e) {
    print(e);
  }
  return imageCount.length;
}

deleteMedia({required String imageurl}) async {
  final deletestorage = await workmedia.doc(docId).update({
    "images": FieldValue.arrayRemove([imageurl])
  });

  final deleteimage = await FirebaseStorage.instance.ref().delete();
  return [deleteimage, deletestorage];
}

checkResponseDoc({required String respId}) async {
  bool? exist;
  bool? accepted;
  try {
    final snapshot =
        await freelanceRqst.where("responseId", isEqualTo: respId).get();

    exist = snapshot.docs[0].exists;
    if (exist) {
      accepted = snapshot.docs[0]["accepted"];
    }
  } catch (e) {
    print(e);
  }
  return accepted;
}

nameToArray({String? name}) async {
  var possibleNumOfPairs = (name!.length / 3).floor();

  var list = [];

  for (var i = 1; i <= possibleNumOfPairs; i++) {
    var newName = name.substring(0, i * 3);

    list.add(newName.toLowerCase());
  }

  return list;
}

Future<void> addToVerification(
    {String? deptname,
    String? startDate,
    String? endDate,
    String? name,
    String? uid}) {
  return verification
      .add({
        "department": deptname?.toLowerCase(),
        "startDate": startDate,
        "endDate": endDate,
        "uid": uid,
        "name": name,
        "time": FieldValue.serverTimestamp()
      })
      .then((value) => print("User type Added"))
      .catchError((error) => print("Failed to add user: $error"));
}
