import 'package:flutter/material.dart';
import 'package:kilo/widgets/settings/textfieldcustom.dart';
import 'package:kilo/widgets/universal_appbar.dart';

class ChangeBioPage extends StatelessWidget {
  ChangeBioPage({
    Key? key,
  }) : super(key: key);

  final TextEditingController bioController = TextEditingController();
  final TextEditingController bioTitleController = TextEditingController();

  final String bio = "bio";
  final String bioTitle = " Bio Title";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: UniversalAppBar(),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextfieldCustom(
              mycontroller: bioController,
              label: bio,
              maxleng: 60,
            ),
            TextfieldCustom(
              mycontroller: bioTitleController,
              label: bioTitle,
              maxleng: 200,
              maxline: 8,
            ),
            ElevatedButton(onPressed: () {}, child: Text("update"))
          ],
        )));
  }
}
