import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kilo/bloc/google_SignUp/google_signup_bloc.dart';
import 'package:kilo/router/app_router.gr.dart';
import 'package:kilo/widgets/auth/introduction-freelance.dart';
import 'package:auto_route/auto_route.dart';

class FreelanceSignUp extends StatelessWidget {
  const FreelanceSignUp({Key? key}) : super(key: key);

  final String body = "understand the terms and conditon and guidance ";
  final String header = "Freelancing";
  @override
  Widget build(BuildContext context) {
    return BlocListener<GoogleSignUpBloc, GoogleSignupState>(
      listener: (context, state) {
        // TODO: implement listener
        if (state is GoogleSignedUp) {
          context.pushRoute(FreelanceStepOne());
        }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          //brightness: Brightness.light,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              //context.pushRoute(Setting());
              context.popRoute();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        body: SafeArea(
          child: IntroductionFreelance(
            body: body,
            header: header,
            route: FreelanceStepOne(),
          ),
        ),
      ),
    );
  }
}
