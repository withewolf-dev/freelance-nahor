import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kilo/model/freelance-request.dart';
import 'package:kilo/repository/authentication.dart';
import 'package:kilo/router/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';

class FreelanceNoti extends StatelessWidget {
  final String id;
  FreelanceNoti({Key? key, required this.id}) : super(key: key);

  getfreelanceNotifications() async {
    List notification = [];
    try {
      final freelanceRqst = await FirebaseFirestore.instance
          .collection('freelanceRqst')
          .where("freelancerId", isEqualTo: id)
          .get();

      final senderRqst = await FirebaseFirestore.instance
          .collection("freelanceRqst")
          .where("hireId", isEqualTo: id)
          .get();

      senderRqst.docs.forEach((doc) {
        notification.add(doc.data());
      });

      freelanceRqst.docs.forEach((doc) {
        //print(doc.data());

        notification.add(doc.data());
      });
    } catch (e) {
      print(e);
    }

    return notification;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getfreelanceNotifications(),
      builder: (BuildContext context, snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.hasData) {
          var list = snapshot.data as List;
          print(snapshot.data);
          return ListView(
            children: list.map((document) {
              return ListTile(
                title: Text(document["accepted"].toString()),
              );
            }).toList(),
          );
          // return InkWell(
          //     onTap: () {
          //       getfreelanceNotifications();
          //     },
          //     child: Center(
          //       child: Text("testing"),
          //     ));
        }

        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  toList() {}
}
