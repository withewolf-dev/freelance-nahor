import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kilo/navigation_cubit.dart';
import 'package:kilo/router/app_router.gr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // home: BlocProvider(
      //   create: (context) => NavigationCubit(),
      //   child: AppNavigation(),
      // ),
      debugShowCheckedModeBanner: false,
      title: 'AutoRoute Bascis',
      // theme: ThemeData.dark(),
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
