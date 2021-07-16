import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:kilo/pages/ProfileSheet.dart';
import 'package:kilo/pages/auth/HireSignupPage.dart';
import 'package:kilo/pages/auth/auth_flow/freelance/freelanceStep_catg.dart';
import 'package:kilo/pages/auth/auth_flow/freelance/freelanceStep_five.dart';
import 'package:kilo/pages/auth/auth_flow/freelance/freelanceStep_four.dart';
import 'package:kilo/pages/auth/auth_flow/freelance/freelanceStep_one.dart';
import 'package:kilo/pages/auth/auth_flow/freelance/freelanceStep_three.dart';
import 'package:kilo/pages/auth/auth_flow/freelance/freelanceStep_two.dart';
import 'package:kilo/pages/auth/auth_flow/freelance/isAccountvalid.dart';
import 'package:kilo/pages/auth/auth_flow/hire/hireOtpVerification.dart';
import 'package:kilo/pages/auth/auth_flow/hire/hirestepOne.dart';
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
    AutoRoute(page: FreelanceStepTwo),
    AutoRoute(page: FreelanceStepThree),
    AutoRoute(page: FreelanceStepFour),
    AutoRoute(page: FreelanceStepFive),
    AutoRoute(page: HireSignuPage),
    AutoRoute(page: FeedPage),
    AutoRoute(page: Setting),
    AutoRoute(page: ProfileSheet),
    AutoRoute(page: FreelanceStepCatg),
    AutoRoute(page: IsAccountValid),
    AutoRoute(page: HireStepOne),
    AutoRoute(page: HireOtpVerifiction),
  ],
)
class $AppRouter {}
