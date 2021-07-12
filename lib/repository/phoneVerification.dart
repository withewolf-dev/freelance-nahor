import 'package:firebase_auth/firebase_auth.dart';

class PhoneVerification {
  FirebaseAuth auth = FirebaseAuth.instance;

  Future phoneNumVerification({String? phoneNum, String? code}) async {
    try {
      await auth.verifyPhoneNumber(
          verificationCompleted: (PhoneAuthCredential credential) {
            print(credential.smsCode);
          },
          verificationFailed: (FirebaseAuthException e) {
            print(e);
          },
          codeAutoRetrievalTimeout: (String verificationId) {
            print(verificationId);
          },
          phoneNumber: "+91${phoneNum!}",
          codeSent: (String verificationId, int? resendToken) async {
            String smsCode = code!;

            if (verificationId == smsCode) {
              print("*********************************************");

              print("number verified");
            }
          });
//       await auth.verifyPhoneNumber(
//   phoneNumber: '+44 7123 123 456',
//   codeSent: (String verificationId, int? resendToken) async {
//     // Update the UI - wait for the user to enter the SMS code
//     String smsCode = 'xxxx';

//     // Create a PhoneAuthCredential with the code
//     PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: verificationId, smsCode: smsCode);

//     // Sign the user in (or link) with the credential
//     await auth.signInWithCredential(credential);
//   },
// );
    } catch (e) {}
  }
}
