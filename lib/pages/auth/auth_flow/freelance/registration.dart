import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kilo/bloc/google_SignUp/google_signup_bloc.dart';
import 'package:kilo/widgets/auth/campus.dart';
import 'package:kilo/widgets/auth/chooseDept.dart';
import 'package:kilo/widgets/calender-session-end.dart';
import 'package:kilo/widgets/calender-session-start.dart';
import 'package:kilo/widgets/universal_appbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:kilo/router/app_router.gr.dart';

class RegistrationForVerification extends StatefulWidget {
  RegistrationForVerification({Key? key}) : super(key: key);

  @override
  _RegistrationForVerificationState createState() =>
      _RegistrationForVerificationState();
}

class _RegistrationForVerificationState
    extends State<RegistrationForVerification> {
  final List<String> list = [
    "Department of Assamese",
    "Department of English",
    "Department of History",
    "Department of Political Science",
    "Department of Sociology",
    "Department of Economics",
    "Department of Education",
    "Department of Commerce",
    "Department of Physics",
    "Department of Chemistry",
    "Department of Mathematics",
    "Department of Statistics",
    "Department of Anthropology",
    "Department of Pharmaceutical Sciences",
    "Department of Life Sciences",
    "Department of Applied Geology",
    "Department of Petroleum Technology",
    " Centre for Studies in Languages",
    "Centre for Studies in Philosophy",
    "Centre for Juridical Studies",
    "Dr. Bhupen Hazarika Centre for studies in Performing Arts",
    "UGC Centre for Studies on Bangladesh and Myanmar",
    "Centre for Studies in Physical Education And Sports",
    "Centre for Studies in Applied Psychology",
    "Centre for Library and Information Science Studies",
    "Centre for Management Studies",
    "Centre for Tea and Agro Studies",
    "Centre for Computer Science and Applications",
    "Centre for Atmospheric Studies",
    "Centre for Studies in Journalism and Mass Communication",
    "Centre for Biotechnology and Bioinformatics",
    "Centre for Studies in Geography",
    "Centre for social work studies",
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
    final AlertDialog dialog = AlertDialog(
      title: Text('qoohoo trial'),
      content: Text('congratulations🥳 you are Registered. You can Sign in🤗'),
      actions: [
        OutlinedButton(
          onPressed: () => context.router.replaceAll([WelcomeRoute()]),
          child: Text('OK'),
        ),
      ],
    );

    return Scaffold(
      appBar: UniversalAppBar(),
      body: BlocListener<GoogleSignUpBloc, GoogleSignupState>(
        listener: (context, state) {
          if (state is AccountExist) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Account Already exist with the email ID")));
          }

          if (state is ShowAlert) {
            {
              showDialog<void>(context: context, builder: (context) => dialog);
            }
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
                                        .add(Signupfreelance(
                                            type: "freelance",
                                            deptname: typeAheadController.text,
                                            endDate: sessionEndController.text,
                                            startDate:
                                                sessionStartController.text));
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
