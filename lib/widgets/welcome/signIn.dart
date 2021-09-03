import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kilo/bloc/google_signIn/google_signin_bloc.dart';
import 'package:kilo/repository/authentication.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _auth = Authentication();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
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
                        BlocProvider.of<GoogleSigninBloc>(context)
                            .add(OnGoogleSignIn());
                      }),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
