import 'package:flutter/material.dart';
import 'package:kilo/repository/phoneVerification.dart';
import 'package:kilo/router/app_router.gr.dart';
import 'package:kilo/router/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:kilo/widgets/verificationfield.dart';

class FreelanceStepFour extends StatelessWidget {
  FreelanceStepFour({Key? key}) : super(key: key);

  final PhoneVerification phone = PhoneVerification();
  final TextEditingController phoneNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    print(phoneNumber.text);
    return Scaffold(
      body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            VerificationField(
              phoneNumber: phoneNumber,
            ),
            Container(
              alignment: AlignmentDirectional.bottomEnd,
              child: ElevatedButton(
                onPressed: phoneNumber.text != " "
                    ? () {
                        context.pushRoute(FreelanceStepFive());
                        // phone.sendOtpcode(
                        //     phoneNum: phoneNumber.text, context: context);
                      }
                    : null,
                child: Text("verify"),
              ),
            ),
          ])),
    );
  }
}
