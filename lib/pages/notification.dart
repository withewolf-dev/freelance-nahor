import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kilo/router/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:kilo/widgets/universal_appbar.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({Key? key});

  final id = FirebaseAuth.instance.currentUser!.uid;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UniversalAppBar(),
      body: SafeArea(
        child: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance
              .collection('freelanceRqst')
              .where("toId", isEqualTo: id)
              .snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return Text('Something went wrong');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }

            return ListView(
              children: snapshot.data!.docs.map((DocumentSnapshot document) {
                Map<String, dynamic> data =
                    document.data()! as Map<String, dynamic>;
                return ListTile(
                  title: data["type"] == "request"
                      ? InkWell(
                          onTap: () {
                            context
                                .pushRoute(FreelanceReqDetails(details: data));
                          },
                          child: Text(
                              "${data["name"]} has sent you a freelance request.Click! to view details"),
                        )
                      : data["accepted"] == true
                          ? Text("${data["name"]} has accepted your request")
                          : Text("${data["name"]} has declined your request"),
                );
              }).toList(),
            );
          },
        ),
      ),
    );
  }
}
