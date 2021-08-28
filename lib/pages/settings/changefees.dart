import 'package:flutter/material.dart';
import 'package:kilo/widgets/settings/textfieldcustom.dart';
import 'package:kilo/widgets/universal_appbar.dart';

class ChangeFeesPage extends StatelessWidget {
  ChangeFeesPage({
    Key? key,
  }) : super(key: key);

  final TextEditingController labelController = TextEditingController();

  final String label = "phone number";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: UniversalAppBar(),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Text(
                  "+91",
                  style: TextStyle(fontSize: 20),
                ),
                Expanded(
                  child: TextfieldCustom(
                    mycontroller: labelController,
                    label: label,
                    maxleng: 10,
                  ),
                ),
              ],
            ),
            ElevatedButton(onPressed: () {}, child: Text("update"))
          ],
        )));
  }
}
