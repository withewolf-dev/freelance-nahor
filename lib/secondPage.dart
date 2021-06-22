import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String? text;

  SecondPage({this.text});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text("end Page"),
          Text(text.toString()),
        ],
      ),
    );
  }
}
