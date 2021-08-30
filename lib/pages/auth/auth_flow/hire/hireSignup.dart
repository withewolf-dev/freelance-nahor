import 'package:flutter/material.dart';
import 'package:kilo/router/app_router.gr.dart';
import 'package:kilo/widgets/auth/introduction-hire.dart';
import 'package:kilo/widgets/auth/introduction-freelance.dart';
import 'package:auto_route/auto_route.dart';

class HireSignuPage extends StatelessWidget {
  const HireSignuPage({Key? key}) : super(key: key);

  final String body = "understand the terms and conditon and guidance ";
  final String header = "Hire";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        //brightness: Brightness.light,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            //context.pushRoute(Setting());
            context.popRoute();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: IntroductionHire(
          body: body,
          header: header,
        ),
      ),
    );
  }
}
