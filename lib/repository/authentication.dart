import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Authentication {
  CollectionReference userRole =
      FirebaseFirestore.instance.collection('userRole');

  final googleSignin = GoogleSignIn();

  GoogleSignInAccount? _user;

  GoogleSignInAccount? get user => _user;

  String? _type;

  String? get type => _type;

  String? typeDemo;

  Future googleSignup() async {
    try {
      final googleUser = await googleSignin.signIn();
      if (googleUser == null) return;
      _user = googleUser;

      final googleAuth = await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

      final signedUpUser =
          await FirebaseAuth.instance.signInWithCredential(credential);
      return signedUpUser;
    } on FirebaseAuthException catch (e) {
      print('Failed with error code: ${e.code}');
      print(e.message);
    }
  }

  Future googleSignIn() async {
    try {
      final googleUser = await googleSignin.signIn();
      if (googleUser != null) {
        _user = googleUser;

        final googleAuth = await googleUser.authentication;

        final credential = GoogleAuthProvider.credential(
            accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

        final signedInuser =
            await FirebaseAuth.instance.signInWithCredential(credential);

        if (signedInuser.additionalUserInfo?.isNewUser == false) {
          print("user exist");
          return signedInuser;
        } else {
          print("user doesn't exist");
          logout();
          signedInuser.user?.delete();
          return null;
        }
      }
    } on FirebaseAuthException catch (e) {
      print('Failed with error code: ${e.code}');
      print(e.message);
    }
  }

  userExist(uid) async {
    try {
      final snapshot = await userRole.where("uid", isEqualTo: uid).get();

      print("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ${snapshot.docs.isNotEmpty}");

      return snapshot.docs.isNotEmpty;
    } on FirebaseException catch (e) {
      print(e);
    }
  }

  getUserRole(uid) async {
    try {
      print("working");
      final snapshot = await userRole.where("uid", isEqualTo: uid).get();

      snapshot.docs.forEach((element) {
        print(element.data());
        Map<String, dynamic> data = element.data() as Map<String, dynamic>;
        _type = data["userType"];
        print("$type this is type ii");
      });

      print("$type this is type");
    } on FirebaseException catch (e) {
      print(e);
    }
  }

  logout() async {
    try {
      await googleSignin.disconnect();
      FirebaseAuth.instance.signOut();
      print("logout ho gaya");
    } on FirebaseAuthException catch (e) {
      print('Failed with error code: ${e.code}');
      print(e.message);
    }
  }
}
