import 'package:flutter/material.dart';

class IsAccountValid extends StatelessWidget {
  const IsAccountValid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Text("this account is valid"),
          ElevatedButton(onPressed: () {}, child: Text("next"))
        ],
      ),
    );
  }
}
