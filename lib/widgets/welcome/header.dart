import 'package:flutter/material.dart';

class WelcomeHeader extends StatelessWidget {
  const WelcomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          "Welcomes",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Automatic identity verification which enables you to verify your identity",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey[700], fontSize: 15),
        ),
      ],
    );
  }
}
