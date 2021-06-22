import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:kilo/pages/ProfileSheet.dart';
import 'package:kilo/pages/feedpage.dart';
import 'package:kilo/pages/setting.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: FeedPage, initial: true),
    AutoRoute(page: Setting),
    AutoRoute(page: ProfileSheet),
  ],
)
class $AppRouter {}
