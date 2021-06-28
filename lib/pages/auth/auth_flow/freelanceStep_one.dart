import 'package:flutter/material.dart';
import 'package:kilo/router/app_router.gr.dart';
import 'package:kilo/widgets/auth/chooseCatg.dart';
import 'package:kilo/widgets/auth/chooseDept.dart';
import 'package:kilo/widgets/auth/nextBtn.dart';

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

  bool isbool = false;

  void nextBtn() {
    setState(() {
      isbool = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                header(),
                ChooseDept(
                    list: list,
                    typeAheadController: typeAheadController,
                    isbool: isbool,
                    nextbtn: nextBtn),
                ChooseCatg(),
                nextButton(context: context, page: FreelanceStepTwo()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget header() => Column(
      children: <Widget>[
        Text(
          "Welcome",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        SizedBox(
          height: 20,
        ),
        CircleAvatar(
          maxRadius: 40.0,
          backgroundImage: NetworkImage(
            "https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=200&q=80",
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          "Gitartha Kashyap",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        SizedBox(
          height: 25.0,
        ),
      ],
    );
