import 'package:flutter/material.dart';

class FreelanceNoti extends StatelessWidget {
  final String texts;
  const FreelanceNoti({Key? key, required this.texts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Ink(
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Text(
              texts,
              textDirection: TextDirection.ltr,
            ),
          ),
        ),
      ),
    );
  }
}
