import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kilo/bloc/updatePrice/updateprice_bloc.dart';
import 'package:kilo/widgets/settings/textfieldcustom.dart';
import 'package:kilo/widgets/universal_appbar.dart';

class ChangePricePage extends StatelessWidget {
  ChangePricePage({
    Key? key,
  }) : super(key: key);

  final priceController = TextEditingController();

  final snackBar = SnackBar(content: Text("Price updated"));
  final id = FirebaseAuth.instance.currentUser!.uid;

  @override
  Widget build(BuildContext context) {
    return BlocListener<UpdatepriceBloc, UpdatepriceState>(
      listener: (context, state) {
        // TODO: implement listener
        if (state is UpdateSnackbarPrice) {
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
                                mycontroller: priceController,
                                label: data["price"],
                                maxleng: 200,
                                maxline: 8,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:
                                BlocBuilder<UpdatepriceBloc, UpdatepriceState>(
                              builder: (context, state) {
                                if (state is UpdatePriceLoading) {
                                  if (state.loading == true) {
                                    return CircularProgressIndicator();
                                  }
                                }
                                return OutlinedButton(
                                    onPressed: () {
                                      BlocProvider.of<UpdatepriceBloc>(context)
                                          .add(UpdatePrice(
                                              price: priceController.text));
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
