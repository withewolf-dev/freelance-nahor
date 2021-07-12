import 'package:flutter/material.dart';
import 'package:kilo/repository/phoneVerification.dart';
import 'package:kilo/router/app_router.gr.dart';
import 'package:kilo/widgets/auth/nextBtn.dart';
import 'package:kilo/widgets/auth/otp/otp_fields.dart';

class FreelanceStepFive extends StatefulWidget {
  const FreelanceStepFive({Key? key}) : super(key: key);

  @override
  _FreelanceStepFiveState createState() => _FreelanceStepFiveState();
}

class _FreelanceStepFiveState extends State<FreelanceStepFive> {
  PhoneVerification phone = PhoneVerification();

  String otp = "";

  void getOtp(value) {
    setState(() {
      otp = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          OtpField(getOtp: getOtp),
          Container(
            alignment: AlignmentDirectional.bottomEnd,
            child: ElevatedButton(
              onPressed: () {
                // BlocProvider.of<AuthflowBloc>(context).add(
                //     StepTwoEvent(campus: campus, hometown: hometown));
                // context.pushRoute(FreelanceStepFive());
                phone.phoneNumVerification(code: otp);
              },
              child: Text("next"),
            ),
          ),
        ]),
      )),
    );
  }
}
