import 'package:flutter/material.dart';
import 'package:kilo/widgets/auth/nextBtn.dart';
import 'package:kilo/router/app_router.gr.dart';

class FreelanceStepThree extends StatelessWidget {
  const FreelanceStepThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text("Enter a catchy heading"),
                Text("Write a bio for your skills"),
                nextButton(context: context, page: FreelanceStepFour())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
