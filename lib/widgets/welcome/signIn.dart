import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kilo/bloc/google_signIn/google_signin_bloc.dart';
import 'package:kilo/router/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
      child: Container(
        child: RichText(
          text: TextSpan(
            text: 'already have an account? ',
            style: DefaultTextStyle.of(context).style,
            children: <TextSpan>[
              TextSpan(
                  text: 'sign in',
                  style: TextStyle(color: Colors.blue),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // BlocProvider.of<GoogleSigninBloc>(context)
                      //     .add(OnGoogleSignIn());
                      context.pushRoute(FeedRoute());
                    }),
            ],
          ),
        ),
      ),
    );
  }
}
