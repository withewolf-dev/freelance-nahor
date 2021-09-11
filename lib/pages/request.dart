import 'package:flutter/material.dart';
import 'package:kilo/widgets/universal_appbar.dart';

class RequestPage extends StatelessWidget {
  const RequestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: UniversalAppBar(),
        body: Center(
          child: Text("data"),
        ));
  }
}
