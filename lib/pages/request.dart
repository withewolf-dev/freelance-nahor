import 'package:flutter/material.dart';
import 'package:kilo/widgets/universal_appbar.dart';

class RequestPage extends StatelessWidget {
  const RequestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: UniversalAppBar(),
        body: SingleChildScrollView(
          child: Container(
            height: 800,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      TextField(
                        maxLength: 10,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter Phone no.'),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TextField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter city/town name'),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TextField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter Description for your task.'),
                        maxLength: 150,
                        maxLines: 7,
                      )
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Send Request"),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.black)),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
