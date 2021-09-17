import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kilo/repository/authentication.dart';
import 'package:kilo/router/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
  })  : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize; // default is 56.0
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  final id = FirebaseAuth.instance.currentUser!.uid;
  final auth = Authentication();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: auth.userTypecheck(id),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return AppBar(
              backgroundColor: Colors.white,
              //brightness: Brightness.light,
              elevation: 0,
              actions: <Widget>[
                IconButton(
                    onPressed: () {
                      //_auth.getUserRole("id");
                      context.pushRoute(NotificationScreen());
                    },
                    icon: Icon(
                      Icons.notifications,
                      color: Colors.black,
                    )),
                if (snapshot.data == "freelance")
                  IconButton(
                      onPressed: () {
                        context.pushRoute(Setting());
                      },
                      icon: Icon(
                        Icons.settings,
                        color: Colors.black,
                      )),
                if (snapshot.data == "hire")
                  IconButton(
                      onPressed: () {
                        context.pushRoute(Setting());
                      },
                      icon: Icon(
                        Icons.logout,
                        color: Colors.black,
                      )),
              ],
            );
          }
          return Text("data");
        });
  }
}
