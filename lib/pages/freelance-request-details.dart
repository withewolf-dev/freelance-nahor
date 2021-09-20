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
            ResponedButton(
              toId: details["fromId"],
            ),
          ],
        ),
      )),
    );
  }
}

class ResponedButton extends StatefulWidget {
  final String toId;
  const ResponedButton({Key? key, required this.toId}) : super(key: key);

  @override
  _ResponedButtonState createState() => _ResponedButtonState();
}

class _ResponedButtonState extends State<ResponedButton> {
  bool showbutton = true;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: showbutton == true
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  MaterialButton(
                      minWidth: 170,
                      height: 40,
                      onPressed: () {
                        BlocProvider.of<ResponsetorqstBloc>(context)
                            .add(Response(response: true, toId: widget.toId));
                        setState(() {
                          showbutton = false;
                        });
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
                        BlocProvider.of<ResponsetorqstBloc>(context)
                            .add(Response(response: true, toId: widget.toId));
                        setState(() {
                          showbutton = false;
                        });
                      },
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        "Accepted",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white),
                      ))
                ],
              )
            : Text("data"));
  }
}

class AcceptedButton extends StatelessWidget {
  final String title;
  final bool pressed;
  final String toId;
  const AcceptedButton(
      {Key? key,
      required this.pressed,
      required this.title,
      required this.toId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        minWidth: pressed == true ? 170 : double.infinity,
        color: Colors.black,
        height: 40,
        onPressed: () {
          BlocProvider.of<ResponsetorqstBloc>(context)
              .add(Response(response: true, toId: toId));
        },
        shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(50)),
        child: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 18, color: Colors.white),
        ));
  }
}

class DeclinedButton extends StatelessWidget {
  final String title;
  final bool pressed;
  final String toId;
  const DeclinedButton(
      {Key? key,
      required this.pressed,
      required this.title,
      required this.toId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        minWidth: double.infinity,
        height: 40,
        onPressed: () {
          BlocProvider.of<ResponsetorqstBloc>(context)
              .add(Response(response: false, toId: toId));
        },
        shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(50)),
        child: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        ));
  }
}
