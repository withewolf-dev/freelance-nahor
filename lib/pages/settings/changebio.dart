import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kilo/bloc/bio_bloc/bio_bloc.dart';
import 'package:kilo/widgets/settings/textfieldcustom.dart';
import 'package:kilo/widgets/universal_appbar.dart';

class ChangeBioPage extends StatelessWidget {
  ChangeBioPage({
    Key? key,
  }) : super(key: key);

  final bioController = TextEditingController();
  final bioTitleController = TextEditingController();

  final String bio = "Write your Bio here";
  final String bioTitle = "Write your Bio Title here";
  final snackBar = SnackBar(content: Text("Bio updated"));
  final id = FirebaseAuth.instance.currentUser!.uid;

  @override
  Widget build(BuildContext context) {
    return BlocListener<BioBloc, BioState>(
      listener: (context, state) {
        // TODO: implement listener
        if (state is UpdateSnackbar) {
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
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: <Widget>[
                              SizedBox(
                                height: 20,
                              ),
                              TextfieldCustom(
                                mycontroller: bioTitleController,
                                label: data["bioTitle"],
                                maxleng: 60,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextfieldCustom(
                                mycontroller: bioController,
                                label: data["bio"],
                                maxleng: 200,
                                maxline: 8,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: BlocBuilder<BioBloc, BioState>(
                              builder: (context, state) {
                                if (state is Loading) {
                                  if (state.loading == true) {
                                    return CircularProgressIndicator();
                                  }
                                }
                                return OutlinedButton(
                                    onPressed: () {
                                      BlocProvider.of<BioBloc>(context).add(
                                          UpdateBio(
                                              bio: bioController.text,
                                              bioTitle:
                                                  bioTitleController.text));
                                    },
                                    child: Text("update"));
                              },
                            ),
                          )
                        ],
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
