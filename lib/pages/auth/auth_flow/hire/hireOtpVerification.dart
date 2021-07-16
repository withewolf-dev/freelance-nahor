import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kilo/bloc/phoneVerify/phoneverify_bloc.dart';
import 'package:kilo/repository/phoneVerification.dart';
import 'package:kilo/router/app_router.gr.dart';
import 'package:kilo/widgets/auth/otp/otp_fields.dart';
import 'package:auto_route/auto_route.dart';

class HireOtpVerifiction extends StatefulWidget {
  const HireOtpVerifiction({Key? key}) : super(key: key);

  @override
  _HireOtpVerifictionState createState() => _HireOtpVerifictionState();
}

class _HireOtpVerifictionState extends State<HireOtpVerifiction> {
  PhoneVerification phone = PhoneVerification();

  String otp = "";
  String code = "";
  void getOtp(value) {
    setState(() {
      otp = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<PhoneverifyBloc, PhoneverifyState>(
        listener: (context, state) {
          // TODO: implement listener
          if (state is VerificationState) {
            setState(() {
              code = state.code;
            });
          }
        },
        child: SafeArea(
            child: SingleChildScrollView(
          child: Column(children: [
            OtpField(getOtp: getOtp),
            Container(
              alignment: AlignmentDirectional.bottomEnd,
              child: ElevatedButton(
                onPressed: () {
                  context.pushRoute(IsAccountValid());
                  // phone.verifycode(
                  //     verificationId: code,
                  //     smsCode: otp,
                  //     context: context);
                },
                child: Text("next"),
              ),
            ),
          ]),
        )),
      ),
    );
  }
}
