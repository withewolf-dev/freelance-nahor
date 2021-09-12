import 'package:flutter/material.dart';
import 'package:kilo/widgets/notification/freelance-notification.dart';
import 'package:kilo/widgets/notification/hire-notification.dart';
import 'package:kilo/widgets/universal_appbar.dart';
import 'package:kilo/router/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UniversalAppBar(),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            const FreelanceNoti(
              texts:
                  "New Freelance  Request From Rijit Das.Click for more details.",
            ),
            SizedBox(
              height: 10,
            ),
            const HireNotif(
              texts: "Your Request to shrawn baruah is cancelled",
            ),
            SizedBox(
              height: 10,
            ),
            const HireNotif(
              texts:
                  "Your Request to shrawn baruah is Accepted. Shrawn will get in touch with you.",
            ),
          ],
        ),
      ),
    );
  }
}
