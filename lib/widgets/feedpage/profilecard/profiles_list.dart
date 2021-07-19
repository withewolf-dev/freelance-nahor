import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kilo/widgets/feedpage/profilecard/profil_container.dart';
import 'package:kilo/widgets/feedpage/profilecard/profile_card.dart';
import 'package:kilo/widgets/profileList.dart';

class ProfilesList extends StatefulWidget {
  @override
  _ProfilesListState createState() => _ProfilesListState();
}

class _ProfilesListState extends State<ProfilesList> {
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('freelance').snapshots();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _usersStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        }

        if (snapshot.connectionState == ConnectionState.active) {
          return SizedBox(
            height: 300,
            child: ListView(
              children: snapshot.data!.docs.map((DocumentSnapshot document) {
                Map<String, dynamic> data =
                    document.data() as Map<String, dynamic>;
                print(data["name"]);
                //return ProfileCard(bio: data['bio'], name: data['name']);
                return ProfileContainer(bio: data['bio'], name: data['name']);
              }).toList(),
            ),
          );
        }

        return Text("not working");
      },
    );
  }
}
