import 'package:flutter/material.dart';

class Illustration extends StatelessWidget {
  const Illustration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/Illustration.png'))),
    );
  }
}
