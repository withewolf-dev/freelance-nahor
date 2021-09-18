import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kilo/repository/authentication.dart';
import 'package:kilo/widgets/notification/freelance-notification.dart';
import 'package:kilo/widgets/notification/hire-notification.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({Key? key}) : super(key: key);

  final id = FirebaseAuth.instance.currentUser!.uid;
  final auth = Authentication();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: FutureBuilder(
      future: auth.userTypecheck(id),
      builder: (context, snapshot) {
        if (snapshot.data == "freelance") {
          return FreelanceNoti();
        }
        if (snapshot.data == "hire") {
          return HireNotif(texts: "texts");
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    )));
  }
}
