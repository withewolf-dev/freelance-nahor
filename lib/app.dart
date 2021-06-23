import 'package:flutter/material.dart';
import 'package:kilo/router/app_router.gr.dart';

class App extends StatelessWidget {
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
