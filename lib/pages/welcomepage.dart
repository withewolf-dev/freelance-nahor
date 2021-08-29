import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kilo/bloc/google_signIn/google_signin_bloc.dart';
import 'package:kilo/repository/authentication.dart';
import 'package:kilo/widgets/welcome/Illustration.dart';
import 'package:kilo/widgets/welcome/header.dart';
import 'package:kilo/widgets/welcome/signIn.dart';
import 'package:kilo/widgets/welcome/signupFreelance.dart';
import 'package:kilo/widgets/welcome/signupHire.dart';
import 'package:kilo/router/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage({Key? key}) : super(key: key);

  final auth = Authentication();
  //final freelance = FreelanceUser();

  final snackBar = SnackBar(content: Text("Soory!, account doesn't exist"));
  final snackBar1 = SnackBar(content: Text(" account exist"));

  @override
  Widget build(BuildContext context) {
    return BlocListener<GoogleSigninBloc, GoogleSigninState>(
      listener: (context, state) {
        // TODO: implement listener
        if (state is NoUserAccount) {
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
        if (state is GoogleSignIn) {
          ScaffoldMessenger.of(context).showSnackBar(snackBar1);
          context.replaceRoute(FeedRoute());
        }
      },
      child: Scaffold(
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
      ),
    );
  }
}
