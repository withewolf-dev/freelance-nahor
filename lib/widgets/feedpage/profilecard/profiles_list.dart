import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kilo/bloc/category_bloc/catgeorybloc_bloc.dart';
import 'package:kilo/widgets/feedpage/profilecard/profile_container.dart';

class ProfilesList extends StatefulWidget {
  ProfilesList({Key? key}) : super(key: key);

  @override
  _ProfilesListState createState() => _ProfilesListState();
}

class _ProfilesListState extends State<ProfilesList> {
  String category = "educational";

  @override
  Widget build(BuildContext context) {
    return BlocListener<CategoryBloc, CategoryblocState>(
      listener: (context, state) {
        // TODO: implement listener
        if (state is Music) {
          setState(() {
            category = state.category;
          });
        }
        if (state is Art) {
          setState(() {
            category = state.category;
          });
        }

        if (state is Education) {
          setState(() {
            category = state.category;
          });
        }
      },
      child: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('freelanceUserInfo')
            .where('categoryName', isEqualTo: category)
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }

          if (snapshot.hasData == true) {
            return new ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: snapshot.data!.docs.map((DocumentSnapshot document) {
                Map<String, dynamic> data =
                    document.data() as Map<String, dynamic>;
                print(data["bioTitle"]);
                print("object");
                return ProfileContainer(
                  bio: data['bio'],
                  name: data['name'],
                  freelancerId: "id",
                );
              }).toList(),
            );
          }

          return CircularProgressIndicator();
        },
      ),
    );
  }
}
