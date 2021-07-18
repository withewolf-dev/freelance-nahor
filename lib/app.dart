import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kilo/bloc/google_signIn/google_signin_bloc.dart';
import 'package:kilo/repository/authentication.dart';
import 'package:kilo/router/app_router.gr.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final appRouter = AppRouter();
  final _authentication = Authentication();

  bool user = false;

  @override
  Widget build(BuildContext context) {
    return BlocListener<GoogleSigninBloc, GoogleSigninState>(
      listener: (context, state) {
        // TODO: implement listener
        if (state is GoogleSignIn) {
          setState(() {
            user = false;
          });
        }
      },
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'AutoRoute Bascis',
        routerDelegate: appRouter.delegate(initialRoutes: [
          if (_authentication.user != null) MainRouter(),
          if (_authentication.user == null) SignupRoute(),
        ]),
        routeInformationParser:
            appRouter.defaultRouteParser(includePrefixMatches: true),
      ),
    );
  }
}
