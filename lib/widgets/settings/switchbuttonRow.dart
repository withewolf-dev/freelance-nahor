import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchButtonRow extends StatefulWidget {
  final String title;

  const SwitchButtonRow({Key? key, required this.title}) : super(key: key);

  @override
  _SwitchButtonRowState createState() => _SwitchButtonRowState();
}

class _SwitchButtonRowState extends State<SwitchButtonRow> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.title,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600]),
        ),
        Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              value: isActive,
              onChanged: (bool val) {
                setState(() {
                  isActive = val;
                });
                print(val);
              },
            ))
      ],
    );
  }
}
