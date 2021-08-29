import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kilo/bloc/authflow/authflow_bloc.dart';
import 'package:kilo/router/app_router.gr.dart';
import 'package:kilo/widgets/auth/chooseDept.dart';
import 'package:auto_route/auto_route.dart';
import 'package:kilo/widgets/calender-session-end.dart';
import 'package:kilo/widgets/calender-session-start.dart';
import 'package:kilo/widgets/universal_appbar.dart';

class FreelanceStepOne extends StatefulWidget {
  FreelanceStepOne({Key? key}) : super(key: key);

  @override
  _FreelanceStepOneState createState() => _FreelanceStepOneState();
}

class _FreelanceStepOneState extends State<FreelanceStepOne> {
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
      body: BlocListener<AuthflowBloc, AuthflowState>(
        listener: (context, state) {
          // TODO: implement listener
          if (state is StepOneDone) {
            context.pushRoute(FreelanceStepTwo());
          }
        },
        child: SafeArea(
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
                    SizedBox(
                      height: 300,
                    ),

                    Container(
                      alignment: AlignmentDirectional.bottomEnd,
                      child: ElevatedButton(
                        onPressed: typeAheadController.text != ""
                            ? () {
                                context.pushRoute(FreelanceStepFive());
                                // phone.sendOtpcode(
                                //     phoneNum: phoneNumber.text, context: context);
                              }
                            : null,
                        child: Text("verify"),
                      ),
                    ),
                    // Container(
                    //   color: Colors.black,
                    //   child: TextButton(
                    //     style: TextButton.styleFrom(
                    //       padding: const EdgeInsets.all(12.0),
                    //       primary: Colors.white,
                    //       textStyle: const TextStyle(fontSize: 20),
                    //     ),
                    //     onPressed: typeAheadController.text != " " &&
                    //             sessionEndController.text != " " &&
                    //             sessionStartController.text != " "
                    //         ? () {
                    //             // BlocProvider.of<GoogleSignUpBloc>(context)
                    //             //     .add(Signupfreelance());
                    //             // context.pushRoute(widget);
                    //           }
                    //         : null,
                    //     child: const Text('Sign up with google'),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
