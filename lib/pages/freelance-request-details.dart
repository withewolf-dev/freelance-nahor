import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:kilo/widgets/universal_appbar.dart';

class FreelanceReqDetails extends StatelessWidget {
  final details;
  const FreelanceReqDetails(
      {Key? key, @PathParam('details') required this.details})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UniversalAppBar(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Text(details["phone"]),
            Text(details["descrp"]),
          ],
        ),
      )),
    );
  }
}
