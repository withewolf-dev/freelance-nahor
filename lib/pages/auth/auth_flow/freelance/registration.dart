import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kilo/bloc/google_SignUp/google_signup_bloc.dart';
import 'package:kilo/router/app_router.gr.dart';
import 'package:kilo/widgets/auth/campus.dart';
import 'package:kilo/widgets/auth/chooseDept.dart';
import 'package:auto_route/auto_route.dart';
import 'package:kilo/widgets/calender-session-end.dart';
import 'package:kilo/widgets/calender-session-start.dart';
import 'package:kilo/widgets/universal_appbar.dart';

class RegistrationForVerification extends StatefulWidget {
  RegistrationForVerification({Key? key}) : super(key: key);

  @override
  _RegistrationForVerificationState createState() =>
      _RegistrationForVerificationState();
}

class _RegistrationForVerificationState
    extends State<RegistrationForVerification> {
  final List<String> list = [
    "computer",
    "law",
    "physics",
    "chemistry",
    "coomputer"
  ];

  final TextEditingController typeAheadController = TextEditingController();
  final TextEditingController sessionStartController = TextEditingController();
  final TextEditingController sessionEndController = TextEditingController();
  final TextEditingController campusController = TextEditingController();

  bool isbool = false;

  void nextBtn() {
    setState(() {
      isbool = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(sessionStartController.text);
    print(sessionEndController.text);

    print(typeAheadController.text);

    return Scaffold(
      appBar: UniversalAppBar(),
      body: BlocListener<GoogleSignUpBloc, GoogleSignupState>(
        listener: (context, state) {
          // TODO: implement listener
          if (state is AccountExist) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Account Already exist with the email ID")));
          }
        },
        child: BlocBuilder<GoogleSignUpBloc, GoogleSignupState>(
          builder: (context, state) {
            if (state is SignupLoading) {
              if (state.loadingState == true) {
                return LinearProgressIndicator();
              }
            }
            return SafeArea(
              child: Container(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    child: Column(
                      children: <Widget>[
                        ChooseDept(
                            list: list,
                            typeAheadController: typeAheadController,
                            isbool: isbool,
                            nextbtn: nextBtn),
                        CalSessionStart(
                          dateinput: sessionStartController,
                        ),
                        CalSessionEnd(
                          dateinput: sessionEndController,
                        ),
                        Campus(typeAheadController: campusController),
                        SizedBox(
                          height: 300,
                        ),
                        Container(
                          color: Colors.black,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.all(12.0),
                              primary: Colors.white,
                              textStyle: const TextStyle(fontSize: 20),
                            ),
                            onPressed: typeAheadController.text != " " &&
                                    sessionEndController.text != " " &&
                                    sessionStartController.text != " "
                                ? () {
                                    BlocProvider.of<GoogleSignUpBloc>(context)
                                        .add(
                                            Signupfreelance(type: "freelance"));
                                  }
                                : null,
                            child: const Text('Sign up with google'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
