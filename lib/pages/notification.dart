// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// class NotificationScreen extends StatelessWidget {
//   NotificationScreen({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     CollectionReference users = FirebaseFirestore.instance.collection('users');
//     final id = FirebaseAuth.instance.currentUser!.uid;

//     return Scaffold(
//       body: SafeArea(
//         child: FutureBuilder(
//           future: users.where("toId", isEqualTo: id).get(),
//           builder: (BuildContext context, AsyncSnapshot snapshot) {
//             if (snapshot.hasError) {
//               return Text("Something went wrong");
//             }

//             if (snapshot.data == true) {
//               Map<String, dynamic> data =
//                   snapshot.data!.data() as Map<String, dynamic>;
//               print("object ${data["name"]}");
//               return data["type"] == "response"
//                   ? ListTile(
//                       title: Text("${data["name"]} has accepted your request"),
//                     )
//                   : ListTile(
//                       title: Text(
//                           "${data["name"]} has sent you a freelance request.Click! to view details"),
//                     );
//             }

//             return Text("loading");
//           },
//         ),
//       ),
//     );
//   }
// }

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({Key? key});

  final id = FirebaseAuth.instance.currentUser!.uid;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                return data["type "] == "request"
                    ? ListTile(
                        title:
                            Text("${data["name"]} has accepted your request"),
                      )
                    : ListTile(
                        title: Text(
                            "${data["name"]} has sent you a freelance request.Click! to view details"),
                      );
              }).toList(),
            );
          },
        ),
      ),
    );
  }
}
