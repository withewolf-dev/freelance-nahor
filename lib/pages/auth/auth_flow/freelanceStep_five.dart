import 'package:flutter/material.dart';
import 'package:kilo/router/app_router.gr.dart';
import 'package:kilo/widgets/auth/nextBtn.dart';
import 'package:kilo/widgets/auth/otp/otp_fields.dart';

class FreelanceStepFive extends StatelessWidget {
  const FreelanceStepFive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(children: [
        OtpField(),
        nextButton(context: context, page: FeedRoute())
      ])),
    );
  }
}
