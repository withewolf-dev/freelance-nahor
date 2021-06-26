import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:kilo/pages/ProfileSheet.dart';
import 'package:kilo/pages/auth/HireSignupPage.dart';
import 'package:kilo/pages/auth/auth_flow/freelanceStep_one.dart';
import 'package:kilo/pages/auth/freelanceSignuPage.dart';
import 'package:kilo/pages/feedpage.dart';
import 'package:kilo/pages/setting.dart';
import 'package:kilo/pages/welcomepage.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: WelcomePage, initial: true),
    AutoRoute(page: FreelanceSignUp),
    AutoRoute(page: FreelanceStepOne),
    AutoRoute(page: HireSignuPage),
    AutoRoute(page: FeedPage),
    AutoRoute(page: Setting),
    AutoRoute(page: ProfileSheet),
  ],
)
class $AppRouter {}
