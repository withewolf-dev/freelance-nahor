import 'package:flutter/material.dart';
import 'package:kilo/router/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';

class SignupFreelance extends StatelessWidget {
  const SignupFreelance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        minWidth: double.infinity,
        height: 60,
        onPressed: () {
          context.pushRoute(FreelanceSignUp());
        },
        shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(50)),
        child: Text(
          "signup to freelancer",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        ));
  }
}
