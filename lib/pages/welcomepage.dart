import 'package:flutter/material.dart';
import 'package:kilo/router/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              header(),
              illustration(context: context),
              Column(
                children: <Widget>[
                  signupFreelance(context: context),
                  SizedBox(
                    height: 20,
                  ),
                  signupHire(context: context),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget signupFreelance({required BuildContext context}) => MaterialButton(
        minWidth: double.infinity,
        height: 60,
        onPressed: () {
          //context.pushRoute(FreelancSingupS());
          context.pushRoute(FreelanceSignUp());
        },
        shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(50)),
        child: Text(
          "signup to freelancer",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        ),
      );
}

Widget signupHire({required BuildContext context}) => Container(
      padding: EdgeInsets.only(top: 3, left: 3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border(
            bottom: BorderSide(color: Colors.black),
            top: BorderSide(color: Colors.black),
            left: BorderSide(color: Colors.black),
            right: BorderSide(color: Colors.black),
          )),
      child: MaterialButton(
        minWidth: double.infinity,
        height: 60,
        onPressed: () {
          //context.pushRoute(HireSignuPage());
        },
        color: Colors.yellow,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child: Text(
          "signup to hire here",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        ),
      ),
    );

Widget header() => Column(
      children: <Widget>[
        Text(
          "Welcomes",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Automatic identity verification which enables you to verify your identity",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey[700], fontSize: 15),
        ),
      ],
    );
Widget illustration({required context}) => Container(
      height: MediaQuery.of(context).size.height / 3,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/Illustration.png'))),
    );
