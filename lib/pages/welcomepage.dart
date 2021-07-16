import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kilo/bloc/authflow/authflow_bloc.dart';
import 'package:kilo/bloc/google_signIn/google_signin_bloc.dart';
import 'package:kilo/pages/auth/HireSignupPage.dart';
import 'package:kilo/repository/authentication.dart';
import 'package:kilo/repository/freelance/create-freelanceUser.dart';
import 'package:kilo/router/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:kilo/widgets/welcome/Illustration.dart';
import 'package:kilo/widgets/welcome/header.dart';
import 'package:kilo/widgets/welcome/signIn.dart';
import 'package:kilo/widgets/welcome/signupFreelance.dart';
import 'package:kilo/widgets/welcome/signupHire.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage({Key? key}) : super(key: key);

  final auth = Authentication();
  //final freelance = FreelanceUser();
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
              WelcomeHeader(),
              Illustration(),
              Column(
                children: <Widget>[
                  SignupFreelance(),
                  SizedBox(
                    height: 20,
                  ),
                  SignupHire()
                ],
              ),
              SignIn(),
            ],
          ),
        ),
      ),
    );
  }
}
