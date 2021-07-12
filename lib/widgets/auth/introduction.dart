import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kilo/bloc/google_Signin/google_signin_bloc.dart';
import 'package:kilo/router/app_router.gr.dart';

class Introduction extends StatefulWidget {
  const Introduction({Key? key, required this.body, required this.header})
      : super(key: key);

  final String header;
  final String body;

  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                widget.header,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                widget.body,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey[700], fontSize: 15),
              ),
            ],
          ),
          Column(children: <Widget>[
            checkbox(
              value: _isSelected,
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              label: 'I understand and wish to proceed',
              onChanged: (bool newValue) {
                setState(() {
                  _isSelected = newValue;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.black,
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(12.0),
                  primary: Colors.white,
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: _isSelected
                    ? () {
                        // BlocProvider.of<GoogleSigninBloc>(context)
                        //     .add(Signinasfreelance());
                        context.pushRoute(FreelanceStepOne());
                      }
                    : null,
                child: const Text('Sign up with google'),
              ),
            ),
          ])
        ],
      ),
    );
  }
}

Widget checkbox(
        {required bool value,
        required EdgeInsets padding,
        required String label,
        required Function onChanged}) =>
    InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Padding(
        padding: padding,
        child: Row(
          children: <Widget>[
            Expanded(child: Text(label)),
            Checkbox(
              value: value,
              onChanged: (bool? newValue) {
                onChanged(newValue);
              },
            ),
          ],
        ),
      ),
    );

class Checkboxlabel extends StatefulWidget {
  const Checkboxlabel({Key? key}) : super(key: key);

  @override
  _CheckboxlabelState createState() => _CheckboxlabelState();
}

class _CheckboxlabelState extends State<Checkboxlabel> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
