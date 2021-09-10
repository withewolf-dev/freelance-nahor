import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kilo/bloc/updatecategory_bloc/updatecategory_bloc.dart';
import 'package:kilo/widgets/changecatg-widget.dart';
import 'package:kilo/widgets/universal_appbar.dart';

class ChangeCatgPage extends StatelessWidget {
  ChangeCatgPage({Key? key}) : super(key: key);
  static List categoriesList = [
    "No Category Selected",
    "educational",
    "artist",
    "editor"
  ];
  final int selectedIndex = 0;
  final String categoryName = categoriesList[0];

  final snackBar = SnackBar(content: Text("Category updated"));
  final id = FirebaseAuth.instance.currentUser!.uid;
  @override
  Widget build(BuildContext context) {
    return BlocListener<UpdatecategoryBloc, UpdatecategoryState>(
      listener: (context, state) {
        // TODO: implement listener
        if (state is CtgSnackBar) {
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      child: Scaffold(
        appBar: UniversalAppBar(),
        body: SafeArea(
          child: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection('freelanceUserInfo')
                .where('uid', isEqualTo: id)
                .snapshots(),
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasError) {
                return Text('Something went wrong');
              }

              if (snapshot.hasData == true) {
                return ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children:
                      snapshot.data!.docs.map((DocumentSnapshot document) {
                    Map<String, dynamic> data =
                        document.data() as Map<String, dynamic>;
                    print(data["selectedIndex"]);
                    return ChangeCatgWidget(
                        selectedIndex: data["selectedIndex"],
                        categoriesList: categoriesList,
                        categoryName: categoriesList[data["selectedIndex"]]);
                  }).toList(),
                );
              }

              return Center(child: CircularProgressIndicator());
            },
          ),
        ),
      ),
    );
  }
}
