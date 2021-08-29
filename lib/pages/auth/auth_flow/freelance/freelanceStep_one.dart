import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kilo/bloc/authflow/authflow_bloc.dart';
import 'package:kilo/router/app_router.gr.dart';
import 'package:kilo/widgets/auth/chooseDept.dart';
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
                  ChooseDept(
                      list: list,
                      typeAheadController: typeAheadController,
                      isbool: isbool,
                      nextbtn: nextBtn),
                  CalSessionStart(),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CalSessionStart extends StatefulWidget {
  const CalSessionStart({Key? key}) : super(key: key);

  @override
  _CalSessionStartState createState() => _CalSessionStartState();
}

class _CalSessionStartState extends State<CalSessionStart> {
  TextEditingController dateinput = TextEditingController();

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15),
        height: 150,
        child: Center(
            child: TextField(
          controller: dateinput, //editing controller of this TextField
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              icon: Icon(Icons.calendar_today), //icon of text field
              labelText: "Enter Date" //label text of field
              ),
          readOnly: true, //set it true, so that user will not able to edit text
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(
                    2000), //DateTime.now() - not to allow to choose before today.
                lastDate: DateTime(2101));

            if (pickedDate != null) {
              print(
                  pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
              String formattedDate =
                  '${pickedDate.day.toString()}-${pickedDate.month.toString()}-${pickedDate.year.toString()}';

              print(
                  formattedDate); //formatted date output using intl package =>  2021-03-16
              //you can implement different kind of Date Format here according to your requirement

              setState(() {
                dateinput.text =
                    formattedDate; //set output date to TextField value.
              });
            } else {
              print("Date is not selected");
            }
          },
        )));
  }
}
