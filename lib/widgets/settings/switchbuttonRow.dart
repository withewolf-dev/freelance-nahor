import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchButtonRow extends StatelessWidget {
  final String title;

  const SwitchButtonRow({Key? key, required this.title}) : super(key: key);

  final bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600]),
        ),
        Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              value: isActive,
              onChanged: (bool val) {},
            ))
      ],
    );
  }
}
