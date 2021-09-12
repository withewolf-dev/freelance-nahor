import 'package:flutter/material.dart';
import 'package:kilo/widgets/universal_appbar.dart';

class FreelanceReqDetails extends StatelessWidget {
  const FreelanceReqDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UniversalAppBar(),
      body: SafeArea(
          child: Center(
        child: Text(
          "freelance details",
          textDirection: TextDirection.ltr,
        ),
      )),
    );
  }
}
