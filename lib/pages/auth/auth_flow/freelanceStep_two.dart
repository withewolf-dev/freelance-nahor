import 'package:flutter/material.dart';
import 'package:kilo/widgets/auth/nextBtn.dart';
import 'package:kilo/router/app_router.gr.dart';

class FreelanceStepTwo extends StatelessWidget {
  const FreelanceStepTwo({Key? key}) : super(key: key);

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
                Text("Where do you stay in campus ?"),
                Text("homeTown?"),
                nextButton(context: context, page: FreelanceStepThree())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
