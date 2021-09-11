import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kilo/bloc/updatefee_bloc/updatefee_bloc.dart';
import 'package:kilo/widgets/changefees_widget.dart';
import 'package:kilo/widgets/universal_appbar.dart';

class ChangeFeesPage extends StatelessWidget {
  ChangeFeesPage({
    Key? key,
  }) : super(key: key);

  final id = FirebaseAuth.instance.currentUser!.uid;
  final snackBar = SnackBar(content: Text("Fees detail updated"));

  @override
  Widget build(BuildContext context) {
    return BlocListener<UpdatefeeBloc, UpdatefeeState>(
      listener: (context, state) {
        if (state is FeesSnackBar) {
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
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
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
                      return ChangeFeesWidget(
                        durationLabel: data["duration"],
                        feesLabel: data["fees"],
                      );
                    }).toList(),
                  );
                }

                return Center(child: CircularProgressIndicator());
              },
            ),
          )),
    );
  }
}
