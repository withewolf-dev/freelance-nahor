import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kilo/bloc/google_signIn/google_signin_bloc.dart';
import 'package:kilo/pages/welcomepage.dart';
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
      routerDelegate: appRouter.delegate(),
      routeInformationParser:
          appRouter.defaultRouteParser(includePrefixMatches: true),
    );
  }
}
