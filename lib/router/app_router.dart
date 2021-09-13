import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:kilo/pages/auth/auth_flow/freelance/registration.dart';
import 'package:kilo/pages/auth/auth_flow/hire/hireSignup.dart';
import 'package:kilo/pages/auth/FreelanceSignup.dart';
import 'package:kilo/pages/feedpage.dart';
import 'package:kilo/pages/freelance-request-details.dart';
import 'package:kilo/pages/notification.dart';
import 'package:kilo/pages/request.dart';
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
    AutoRoute(page: RegistrationForVerification),
    AutoRoute(page: HireSignuPage),
    AutoRoute(page: FeedPage),
    AutoRoute(page: Setting),
    AutoRoute(page: SearchScreen),
    AutoRoute(page: ChangeBioPage),
    AutoRoute(page: ChangeFeesPage),
    AutoRoute(page: ChangePhonenumPage),
    AutoRoute(page: ChangeTitlePage),
    AutoRoute(page: UploadWorkPage),
    AutoRoute(page: ChangeCatgPage),
    AutoRoute(page: RequestPage),
    AutoRoute(page: NotificationScreen),
    AutoRoute(page: FreelanceReqDetails),
  ],
)
class $AppRouter {}
