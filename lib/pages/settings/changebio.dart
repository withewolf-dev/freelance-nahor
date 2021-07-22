import 'package:flutter/material.dart';
import 'package:kilo/widgets/universal_appbar.dart';

class ChangeBioPage extends StatelessWidget {
  const ChangeBioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UniversalAppBar(),
      body: Center(
        child: Text(
          "change bio",
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}
