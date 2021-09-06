import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Authentication {
  CollectionReference userRole =
      FirebaseFirestore.instance.collection('userRole');

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

  userTypecheck(uid) async {
    String? type;
    try {
      final snapshot = await userRole.where("uid", isEqualTo: uid).get();

      type = snapshot.docs[0]["userType"];
    } on FirebaseException catch (e) {
      print(e);
    }
    return type;
  }

  logout() async {
    try {
      await googleSignin.disconnect();
      await FirebaseAuth.instance.signOut();
      print("logout ho gaya");
    } on FirebaseAuthException catch (e) {
      print('Failed with error code: ${e.code}');
      print(e.message);
    }
  }
}
