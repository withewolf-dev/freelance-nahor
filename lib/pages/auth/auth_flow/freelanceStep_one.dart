import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kilo/bloc/authflow/authflow_bloc.dart';
import 'package:kilo/router/app_router.gr.dart';
import 'package:kilo/widgets/auth/chooseDept.dart';
import 'package:kilo/widgets/auth/nextBtn.dart';
import 'package:auto_route/auto_route.dart';

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
  String session = "";
  bool isSessionEmpty = true;
  void nextBtn() {
    setState(() {
      isbool = true;
    });
  }

  void getSession(year) {
    setState(() {
      session = year;
      isSessionEmpty = false;
    });
    print("****************************");
    print(session);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthflowBloc, AuthflowState>(
        listener: (context, state) {
          // TODO: implement listener
          if (state is StepOneDone) {
            context.pushRoute(FreelanceStepTwo());
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Header(),
                  ChooseDept(
                      list: list,
                      typeAheadController: typeAheadController,
                      isbool: isbool,
                      nextbtn: nextBtn),
                  Session(getSession: getSession),
                  Container(
                    alignment: AlignmentDirectional.bottomEnd,
                    child: ElevatedButton(
                      onPressed:
                          session != "" && typeAheadController.text != " "
                              ? () {
                                  BlocProvider.of<AuthflowBloc>(context).add(
                                      StepOneEvent(
                                          dept: typeAheadController.text,
                                          session: session));
                                  //context.pushRoute(page);
                                }
                              : null,
                      child: Text("next"),
                    ),
                  ),
                  // nextButton(
                  //     context: context,
                  //     page: FreelanceStepTwo(),
                  //     authevent: StepOneEvent(
                  //         dept: typeAheadController.text, session: session)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
  }
}

class Session extends StatefulWidget {
  final Function getSession;
  const Session({Key? key, required this.getSession}) : super(key: key);

  @override
  _SessionState createState() => _SessionState();
}

class _SessionState extends State<Session> {
  final myController = TextEditingController();

  @override
  void initState() {
    super.initState();

    // Start listening to changes.
    myController.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    myController.dispose();
    super.dispose();
  }

  void _printLatestValue() {
    print('Second text field: ${myController.text}');
    widget.getSession(myController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Session ending year",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.green.shade100,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
            ),
            maxLength: 3,
            maxLines: 1,
            keyboardType: TextInputType.number,
            controller: myController,
          ),
        ],
      ),
    );
  }
}
