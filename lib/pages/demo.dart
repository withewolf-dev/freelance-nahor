import 'package:flutter/material.dart';
import 'package:kilo/pages/welcomepage.dart';
import 'package:kilo/router/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context, WelcomeRoute() as Route<Object>);
                },
                child: Text("demo"))));
  }
}
