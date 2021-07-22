import 'package:flutter/material.dart';
import 'package:kilo/pages/auth/auth_flow/freelance/freelanceStep_four.dart';
import 'package:kilo/widgets/avatarHeader.dart';
import 'package:auto_route/auto_route.dart';
import 'package:kilo/router/app_router.gr.dart';
import 'package:kilo/widgets/verificationfield.dart';

class HireStepOne extends StatefulWidget {
  const HireStepOne({Key? key}) : super(key: key);

  @override
  _HireStepOneState createState() => _HireStepOneState();
}

class _HireStepOneState extends State<HireStepOne> {
  final TextEditingController phoneNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              AvatarHeader(
                name: "Gitartha Kashyap",
                image:
                    "https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=200&q=80",
              ),
              VerificationField(phoneNumber: phoneNumber),
              Container(
                alignment: AlignmentDirectional.bottomEnd,
                child: ElevatedButton(
                  onPressed: phoneNumber.text != " "
                      ? () {
                          context.pushRoute(HireOtpVerifiction());
                          // phone.sendOtpcode(
                          //     phoneNum: phoneNumber.text, context: context);
                        }
                      : null,
                  child: Text("verify"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
