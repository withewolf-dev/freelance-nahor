import 'package:flutter/material.dart';

class ChooseCatg extends StatefulWidget {
  const ChooseCatg({Key? key}) : super(key: key);

  @override
  _ChooseCatgState createState() => _ChooseCatgState();
}

class _ChooseCatgState extends State<ChooseCatg> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50.0),
        Container(
          child: Text(
            "Choose category",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
        ),
        Wrap(
          spacing: 10.0,
          runSpacing: 20.0,
          children: [
            chips(),
            chips(),
            chips(),
            chips(),
            chips(),
            chips(),
            chips(),
            chips(),
          ],
        )
      ],
    );
  }
}

Widget chips() => ElevatedButton(
      onPressed: () {
        print("object");
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.black87,
        minimumSize: Size(88, 36),
        padding: EdgeInsets.symmetric(horizontal: 16),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(2)),
        ),
      ),
      child: Text("chips"),
    );
