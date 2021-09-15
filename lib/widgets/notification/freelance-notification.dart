import 'package:flutter/material.dart';
import 'package:kilo/router/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';

class FreelanceNoti extends StatelessWidget {
  final String texts;
  const FreelanceNoti({Key? key, required this.texts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushRoute(FreelanceReqDetails());
      },
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
