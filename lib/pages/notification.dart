import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kilo/widgets/notification/freelance-notification.dart';

class NotificationScreen extends StatefulWidget {
  NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance
              .collection('freelanceRqst')
              .snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasData == true) {
              print(snapshot.data!.docs.map((e) => e["address"]));
              return ListView(
                  children: snapshot.data!.docs
                      .map((e) => FreelanceNoti(
                            notification: e,
                          ))
                      .toList());
            }

            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
