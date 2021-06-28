import 'package:flutter/material.dart';
import 'package:kilo/router/app_router.gr.dart';
import 'package:kilo/widgets/auth/nextBtn.dart';

class FreelanceStepFour extends StatelessWidget {
  const FreelanceStepFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            VerificationField(),
            nextButton(context: context, page: FreelanceStepFive())
          ])),
    );
  }
}

class VerificationField extends StatefulWidget {
  const VerificationField({Key? key}) : super(key: key);

  @override
  _VerificationFieldState createState() => _VerificationFieldState();
}

class _VerificationFieldState extends State<VerificationField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //child: Card(
      width: double.infinity,
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.green.shade200,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text("+91",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          Container(
            width: 300,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.green.shade100,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
              //maxLength: 60,
              maxLines: 2,
            ),
          )
        ],
      ),
      // ),
    );
  }
}
