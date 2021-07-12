import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:kilo/pages/ProfileSheet.dart';
import 'package:kilo/pages/auth/HireSignupPage.dart';
import 'package:kilo/pages/auth/auth_flow/freelanceStep_catg.dart';
import 'package:kilo/pages/auth/auth_flow/freelanceStep_five.dart';
import 'package:kilo/pages/auth/auth_flow/freelanceStep_four.dart';
import 'package:kilo/pages/auth/auth_flow/freelanceStep_one.dart';
import 'package:kilo/pages/auth/auth_flow/freelanceStep_three.dart';
import 'package:kilo/pages/auth/auth_flow/freelanceStep_two.dart';
import 'package:kilo/pages/auth/freelanceSignuPage.dart';
import 'package:kilo/pages/feedpage.dart';
import 'package:kilo/pages/setting.dart';
import 'package:kilo/pages/welcomepage.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: WelcomePage),
    AutoRoute(page: FreelanceSignUp),
    AutoRoute(page: FreelanceStepOne),
    AutoRoute(page: FreelanceStepTwo),
    AutoRoute(page: FreelanceStepThree),
    AutoRoute(page: FreelanceStepFour, initial: true),
    AutoRoute(page: FreelanceStepFive),
    AutoRoute(page: HireSignuPage),
    AutoRoute(page: FeedPage),
    AutoRoute(page: Setting),
    AutoRoute(page: ProfileSheet),
    AutoRoute(page: FreelanceStepCatg),
  ],
)
class $AppRouter {}
