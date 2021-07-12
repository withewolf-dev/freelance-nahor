import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kilo/bloc/google_Signin/google_signin_bloc.dart';
import 'package:kilo/router/app_router.gr.dart';
import 'package:kilo/widgets/auth/introduction.dart';
import 'package:auto_route/auto_route.dart';

class FreelanceSignUp extends StatelessWidget {
  const FreelanceSignUp({Key? key}) : super(key: key);

  final String body = "understand the terms and conditon and guidance ";
  final String header = "Freelancing";
  @override
  Widget build(BuildContext context) {
    return BlocListener<GoogleSigninBloc, GoogleSigninState>(
      listener: (context, state) {
        // TODO: implement listener
        if (state is GoogleSignedIn) {
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
          child: Introduction(body: body, header: header),
        ),
      ),
    );
  }
}
