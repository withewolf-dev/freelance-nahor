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
            child: ListView(
          children: [
            TextfieldCustom(mycontroller: bioController, label: bio),
            TextfieldCustom(mycontroller: bioTitleController, label: bioTitle),
          ],
        )));
  }
}
