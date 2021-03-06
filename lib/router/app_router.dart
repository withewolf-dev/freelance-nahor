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
import 'package:kilo/pages/settings/changePhonenum.dart';
import 'package:kilo/pages/settings/changebio.dart';
import 'package:kilo/pages/settings/changecatg.dart';
import 'package:kilo/pages/settings/changefees.dart';
import 'package:kilo/pages/settings/changetitle.dart';
import 'package:kilo/pages/settings/setting.dart';
import 'package:kilo/pages/settings/uploadwork.dart';
import 'package:kilo/pages/welcomepage.dart';
import 'package:kilo/widgets/searchscreen/searchScreen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: WelcomePage),
    AutoRoute(page: FreelanceSignUp),
    AutoRoute(page: HireSignuPage),
    AutoRoute(page: FreelanceStepOne),
    AutoRoute(page: FreelanceStepTwo),
    AutoRoute(page: FreelanceStepThree),
    AutoRoute(page: FreelanceStepFour),
    AutoRoute(page: FreelanceStepFive),
    AutoRoute(page: FreelanceStepCatg),
    AutoRoute(page: IsAccountValid),
    AutoRoute(page: HireStepOne),
    AutoRoute(page: HireOtpVerifiction),
    AutoRoute(page: FeedPage),
    AutoRoute(page: Setting),
    AutoRoute(page: ProfileSheet),
    AutoRoute(page: SearchScreen),
    AutoRoute(page: ChangeBioPage),
    AutoRoute(page: ChangeFeesPage),
    AutoRoute(page: ChangePhonenumPage),
    AutoRoute(page: ChangeTitlePage),
    AutoRoute(page: UploadWorkPage),
    AutoRoute(page: ChangeCatgPage)
  ],
)
class $AppRouter {}
