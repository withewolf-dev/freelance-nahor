import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kilo/bloc/searchbloc/searchbloc_bloc.dart';
import 'package:kilo/widgets/feedpage/profilecard/profile_container.dart';

class SearchResult extends StatefulWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  _SearchResultState createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  String? searchTerm = " ";
  @override
  Widget build(BuildContext context) {
    print("searchTerm $searchTerm");
    return BlocListener<SearchBloc, SearchblocState>(
      listener: (context, state) {
        if (state is SearchTerm) {
          print("result ${state.searchTerm}");
          setState(() {
            searchTerm = state.searchTerm;
          });
        }
      },
      child: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('search')
            .where('keyword', arrayContains: searchTerm)
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }

          if (snapshot.hasData == true) {
            return new ListView(
              children: snapshot.data!.docs.map((DocumentSnapshot document) {
                Map<String, dynamic> data =
                    document.data() as Map<String, dynamic>;
                print("data['name'] ${data['name']}");
                return ProfileContainer(
                  bio: data['bio'],
                  name: data['name'],
                  freelancerId: data['id'],
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
