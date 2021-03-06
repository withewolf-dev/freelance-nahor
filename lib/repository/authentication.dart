import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Authentication {
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

      return await FirebaseAuth.instance.signInWithCredential(credential);
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
