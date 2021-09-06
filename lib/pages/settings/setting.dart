import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kilo/bloc/google_signIn/google_signin_bloc.dart';
import 'package:kilo/repository/authentication.dart';
import 'package:kilo/router/app_router.gr.dart';
import 'package:kilo/widgets/settings/buildAccountOptionRow.dart';
import 'package:kilo/widgets/settings/switchbuttonRow.dart';
import 'package:kilo/router/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';

class Setting extends StatelessWidget {
  Setting({Key? key}) : super(key: key);

  final Authentication auth = Authentication();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: ListView(
          children: [
            Text(
              "Settings",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Account",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            AccountOptionRow(title: "change bio", page: ChangeBioRoute()),
            AccountOptionRow(title: "change fees", page: ChangeFeesRoute()),
            AccountOptionRow(
              title: "change category",
              page: ChangeCatgRoute(),
            ),
            AccountOptionRow(title: "upload work", page: UploadWorkRoute()),
            AccountOptionRow(
              title: "change phone number",
              page: ChangePhonenumRoute(),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Icon(
                  Icons.volume_up_outlined,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Notifications",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            SwitchButtonRow(title: "Account active"),
            SizedBox(
              height: 50,
            ),
            Center(
              child: OutlinedButton(
                onPressed: () async {
                  await auth.logout();
                  await Future.delayed(Duration(seconds: 1));

                  context.replaceRoute(WelcomeRoute());
                },
                child: const Text('sign out'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
