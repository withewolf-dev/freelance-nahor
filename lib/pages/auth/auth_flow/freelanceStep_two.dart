import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kilo/bloc/authflow/authflow_bloc.dart';
import 'package:kilo/widgets/auth/freelanceStepTwo/campus.dart';
import 'package:kilo/widgets/auth/freelanceStepTwo/hometown.dart';
import 'package:kilo/widgets/auth/nextBtn.dart';
import 'package:kilo/router/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';

class FreelanceStepTwo extends StatefulWidget {
  const FreelanceStepTwo({Key? key}) : super(key: key);

  @override
  _FreelanceStepTwoState createState() => _FreelanceStepTwoState();
}

class _FreelanceStepTwoState extends State<FreelanceStepTwo> {
  String campus = "";
  String hometown = "";

  void getCampus(data) {
    setState(() {
      campus = data;
    });
    print("campus $campus");
  }

  void getHomeTown(data) {
    setState(() {
      hometown = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthflowBloc, AuthflowState>(
        listener: (context, state) {
          // TODO: implement listener
          if (state is StepTwoDone) {
            context.pushRoute(FreelanceStepCatg());
          }
        },
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  HomeTown(getHomeTown: getHomeTown),
                  Text(campus),
                  CampusStay(
                    getCampus: getCampus,
                    //typeAheadController: typeAheadController,
                  ),
                  Container(
                    alignment: AlignmentDirectional.bottomEnd,
                    child: ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<AuthflowBloc>(context).add(
                            StepTwoEvent(campus: campus, hometown: hometown));
                        //context.pushRoute(page);
                      },
                      child: Text("next"),
                    ),
                  ),
                  // nextButton(
                  //     context: context,
                  //     page: FreelanceStepThree(),
                  //     authevent:
                  //         StepTwoEvent(campus: campus, hometown: hometown))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
