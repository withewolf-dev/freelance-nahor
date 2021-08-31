import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Authentication {
  CollectionReference usersInfo =
      FirebaseFirestore.instance.collection('usersInfo');

  final googleSignin = GoogleSignIn();

  GoogleSignInAccount? _user;

  GoogleSignInAccount? get user => _user;

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

        print(signedInuser.additionalUserInfo?.isNewUser);
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
    final snapshot = await usersInfo.where("uid" == uid).get();
    print("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@222 ${snapshot.docs.isNotEmpty}");
    return snapshot.docs.isNotEmpty;
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
