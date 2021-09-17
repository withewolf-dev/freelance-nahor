import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kilo/repository/authentication.dart';
import 'package:kilo/router/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';

class FreelanceNoti extends StatelessWidget {
  final notification;
  FreelanceNoti({Key? key, required this.notification}) : super(key: key);

  final id = FirebaseAuth.instance.currentUser!.uid;
  final auth = Authentication();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: auth.userTypecheck(id),
      builder: (context, snapshot) {
        if (snapshot.data == "freelance") {
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
                  child: notification["accepted"] == true
                      ? Text(
                          "${notification["freelancerName"]} has accepted your request and will contact you",
                          textDirection: TextDirection.ltr)
                      : Text(
                          "${notification["name"]} has sent a freelance Request. Click to view more detail",
                          textDirection: TextDirection.ltr),
                ),
              ),
            ),
          );
        }

        if (snapshot.data == "hire") {
          InkWell(
            onTap: () {
              //context.pushRoute(FreelanceReqDetails());
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
                        "${notification["freelancerName"]} has accepted your request and will contact you",
                        textDirection: TextDirection.ltr)),
              ),
            ),
          );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  toList() {}
}
