import 'package:flutter/material.dart';

class ChangeCatgPage extends StatelessWidget {
  ChangeCatgPage({Key? key}) : super(key: key);

  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: controller,
            ),
            OutlinedButton(
                onPressed: () {
                  controller.text = "david";
                },
                child: Text("write"))
          ],
        ),
      ),
    );
  }
}
