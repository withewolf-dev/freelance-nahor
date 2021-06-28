import 'package:flutter/material.dart';
import 'package:kilo/widgets/auth/otp/otp_fields.dart';

class FreelanceStepFour extends StatelessWidget {
  const FreelanceStepFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [OtpField()]),
    );
  }
}
