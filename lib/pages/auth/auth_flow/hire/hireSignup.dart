import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kilo/bloc/google_SignUp/google_signup_bloc.dart';
import 'package:kilo/router/app_router.gr.dart';
import 'package:kilo/widgets/auth/introduction-hire.dart';
import 'package:auto_route/auto_route.dart';

class HireSignuPage extends StatelessWidget {
  const HireSignuPage({Key? key}) : super(key: key);

  final String body = "understand the terms and conditon and guidance ";
  final String header = "Hire";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: BlocListener<GoogleSignUpBloc, GoogleSignupState>(
        listener: (context, state) {
          // TODO: implement listener

          if (state is AccountExist) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Account Already exist with the email ID")));
          }

          if (state is PushToFeed) {
            context.replaceRoute(FeedRoute());
          }
        },
        child: SafeArea(
          child: BlocBuilder<GoogleSignUpBloc, GoogleSignupState>(
            builder: (context, state) {
              // TODO: implement listener
              if (state is SignupLoading) {
                if (state.loadingState == true) {
                  return LinearProgressIndicator();
                }
              }
              return IntroductionHire(
                body: body,
                header: header,
              );
            },
          ),
        ),
      ),
    );
  }
}
