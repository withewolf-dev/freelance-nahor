import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:kilo/pages/ProfileSheet.dart';
import 'package:kilo/pages/auth/auth_flow/freelance/freelanceStep_one.dart';
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
    AutoRoute(page: FreelanceStepOne),
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
