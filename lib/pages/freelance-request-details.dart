import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kilo/bloc/responseToRqst/responsetorqst_bloc.dart';
import 'package:kilo/widgets/universal_appbar.dart';

class FreelanceReqDetails extends StatelessWidget {
  final details;
  const FreelanceReqDetails(
      {Key? key, @PathParam('details') required this.details})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UniversalAppBar(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      "Phone No :-  ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      details["phone"],
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                const Divider(
                  height: 20,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                ),
                Wrap(
                  children: <Widget>[
                    Text(
                      "Description-  ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      details["descrp"],
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                const Divider(
                  height: 20,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "Address :-  ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      details["address"],
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ],
            ),
            ResponedButton(
              toId: details["fromId"],
            ),
          ],
        ),
      )),
    );
  }
}

class ResponedButton extends StatelessWidget {
  final String toId;
  const ResponedButton({Key? key, required this.toId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 300,
      child: BlocBuilder<ResponsetorqstBloc, ResponsetorqstState>(
        builder: (context, state) {
          if (state is RespLoading) {
            return Center(child: CircularProgressIndicator());
          }
          if (state is ResState) {
            if (state.resState == true) {
              return Center(
                child: MaterialButton(
                    minWidth: double.infinity,
                    height: 40,
                    color: Colors.black,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      "Accepted",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white),
                    )),
              );
            }
            if (state.resState == false) {
              return Center(
                child: MaterialButton(
                    minWidth: double.infinity,
                    height: 40,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      "Declined",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                    )),
              );
            }
          }
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              MaterialButton(
                  minWidth: 170,
                  height: 40,
                  onPressed: () {
                    BlocProvider.of<ResponsetorqstBloc>(context)
                        .add(Response(response: false, toId: toId));
                  },
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(50)),
                  child: Text(
                    "Decline",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  )),
              MaterialButton(
                  minWidth: 170,
                  height: 40,
                  color: Colors.black,
                  onPressed: () {
                    BlocProvider.of<ResponsetorqstBloc>(context)
                        .add(Response(response: true, toId: toId));
                  },
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(50)),
                  child: Text(
                    "Accept",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white),
                  )),
            ],
          );
        },
      ),
    );
  }
}
