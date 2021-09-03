import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Authentication {
  CollectionReference userRole =
      FirebaseFirestore.instance.collection('userRole');

  String? _type;
  String? get type {
    return _type;
  }

  set setType(String name) {
    this._type = name;
  }

  getUserRole(uid) async {
    try {
      print("working");
      final snapshot = await userRole
          .where("uid", isEqualTo: "9ge1m2XnYhWUdzZJewUKfbuebWq1")
          .get();

      snapshot.docs.forEach((element) {
        print(element.data());
        Map<String, dynamic> data = element.data() as Map<String, dynamic>;
        print(data["userType"]);
        Authentication().setType = data["userType"];
      });
    } on FirebaseException catch (e) {
      print(e);
    }
  }
}
