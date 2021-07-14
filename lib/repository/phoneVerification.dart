import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kilo/bloc/phoneVerify/phoneverify_bloc.dart';

class PhoneVerification {
  FirebaseAuth auth = FirebaseAuth.instance;

  Future sendOtpcode(
      {String? phoneNum, String? code, required BuildContext context}) async {
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
            print("resendtoken $resendToken");

            print("verification id $verificationId");
            if (verificationId != "") {
              BlocProvider.of<PhoneverifyBloc>(context)
                  .add(OnVerifyNumber(verficationcode: verificationId));
            }
          });
    } catch (e) {}
  }

  Future verifycode(
      {required verificationId,
      required smsCode,
      required BuildContext context}) async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId, smsCode: smsCode);
    final value = await auth.signInWithCredential(credential);

    print(credential);
    if (value.user != null) {
      BlocProvider.of<PhoneverifyBloc>(context).add(OnNumberVerified());
    }
  }
}
