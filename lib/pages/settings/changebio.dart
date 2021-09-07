import 'package:flutter/material.dart';
import 'package:kilo/widgets/settings/textfieldcustom.dart';
import 'package:kilo/widgets/universal_appbar.dart';

class ChangeBioPage extends StatelessWidget {
  ChangeBioPage({
    Key? key,
  }) : super(key: key);

  final TextEditingController bioController = TextEditingController();
  final TextEditingController bioTitleController = TextEditingController();

  final String bio = "Write your Bio here";
  final String bioTitle = "Write your Bio Title here";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: UniversalAppBar(),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                TextfieldCustom(
                  mycontroller: bioController,
                  label: bio,
                  maxleng: 60,
                ),
                SizedBox(
                  height: 20,
                ),
                TextfieldCustom(
                  mycontroller: bioTitleController,
                  label: bioTitle,
                  maxleng: 200,
                  maxline: 8,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(onPressed: () {}, child: Text("update")),
            )
          ],
        )));
  }
}
