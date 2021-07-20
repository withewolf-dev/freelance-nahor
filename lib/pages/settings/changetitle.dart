import 'package:flutter/material.dart';

class ChangeTitlePage extends StatelessWidget {
  const ChangeTitlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "change title",
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}
