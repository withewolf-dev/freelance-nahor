import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:kilo/router/app_router.gr.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final appRouter = AppRouter();

  bool? user;
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'AutoRoute Bascis',
      routerDelegate: appRouter.delegate(initialRoutes: [
        if (FirebaseAuth.instance.currentUser != null) FeedRoute(),
        if (FirebaseAuth.instance.currentUser == null) WelcomeRoute(),
      ]),
      routeInformationParser:
          appRouter.defaultRouteParser(includePrefixMatches: true),
    );
  }
}
