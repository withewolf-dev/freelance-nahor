import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kilo/bloc/bloc/demobloc_bloc.dart';
import 'package:kilo/bloc/responseToRqst/responsetorqst_bloc.dart';
import 'package:kilo/repository/freelance/freelancefirestore.dart';
import 'package:kilo/widgets/universal_appbar.dart';

class FreelanceReqDetails extends StatelessWidget {
  final details;
  const FreelanceReqDetails({
    Key? key,
    @PathParam('details') required this.details,
  }) : super(key: key);

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
                Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Description-  ",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        details["descrp"],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
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
            BlocBuilder<ResponsetorqstBloc, ResponsetorqstState>(
              builder: (context, state) {
                if (state is RespLoading) {
                  if (state.loading == true) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                }
                if (state is ResStateChange) {
                  print("${state.respId} ${details["docId"]}");
                  if (state.respId == details["docId"] &&
                      state.accept == true) {
                    return AcceptButton();
                  }

                  if (state.respId == details["docId"] &&
                      state.accept == false) {
                    return DeclinedButton();
                  }
                }

                return ResponedButton(
                  toId: details["fromId"],
                  responseId: details["docId"],
                );
              },
            ),
          ],
        ),
      )),
    );
  }
}

class ResponedButton extends StatefulWidget {
  final String toId;
  final String responseId;
  const ResponedButton({Key? key, required this.toId, required this.responseId})
      : super(key: key);

  @override
  _ResponedButtonState createState() => _ResponedButtonState();
}

class _ResponedButtonState extends State<ResponedButton> {
  bool showbutton = true;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        MaterialButton(
            minWidth: 170,
            height: 40,
            onPressed: () {
              BlocProvider.of<ResponsetorqstBloc>(context).add(Response(
                  response: false,
                  toId: widget.toId,
                  responseId: widget.responseId));
            },
            shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(50)),
            child: Text(
              "Decline",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.black),
            )),
        MaterialButton(
            minWidth: 170,
            color: Colors.black,
            height: 40,
            onPressed: () {
              BlocProvider.of<ResponsetorqstBloc>(context).add(Response(
                  response: true,
                  toId: widget.toId,
                  responseId: widget.responseId));
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
            ))
      ],
    ));
  }
}

class DeclinedButton extends StatelessWidget {
  const DeclinedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        minWidth: double.infinity,
        height: 50,
        onPressed: () {},
        shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(50)),
        child: Text(
          "Declined",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 18, color: Colors.black),
        ));
  }
}

class AcceptButton extends StatelessWidget {
  const AcceptButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        minWidth: double.infinity,
        height: 50,
        color: Colors.black,
        onPressed: () {},
        shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(50)),
        child: Text(
          "Accepted",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 18, color: Colors.white),
        ));
  }
}
