// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../pages/auth/auth_flow/freelance/freelanceStep_catg.dart' as _i11;
import '../pages/auth/auth_flow/freelance/freelanceStep_five.dart' as _i10;
import '../pages/auth/auth_flow/freelance/freelanceStep_four.dart' as _i9;
import '../pages/auth/auth_flow/freelance/freelanceStep_one.dart' as _i6;
import '../pages/auth/auth_flow/freelance/freelanceStep_three.dart' as _i8;
import '../pages/auth/auth_flow/freelance/freelanceStep_two.dart' as _i7;
import '../pages/auth/auth_flow/freelance/isAccountvalid.dart' as _i12;
import '../pages/auth/auth_flow/hire/hireOtpVerification.dart' as _i14;
import '../pages/auth/auth_flow/hire/hirestepOne.dart' as _i13;
import '../pages/auth/freelanceSignuPage.dart' as _i4;
import '../pages/auth/HireSignupPage.dart' as _i5;
import '../pages/feedpage.dart' as _i15;
import '../pages/ProfileSheet.dart' as _i17;
import '../pages/settings/changebio.dart' as _i19;
import '../pages/settings/changecatg.dart' as _i24;
import '../pages/settings/changefees.dart' as _i20;
import '../pages/settings/changePhonenum.dart' as _i21;
import '../pages/settings/changetitle.dart' as _i22;
import '../pages/settings/setting.dart' as _i16;
import '../pages/settings/uploadwork.dart' as _i23;
import '../pages/welcomepage.dart' as _i3;
import '../widgets/searchscreen/searchScreen.dart' as _i18;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    WelcomeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<WelcomeRouteArgs>(
              orElse: () => const WelcomeRouteArgs());
          return _i3.WelcomePage(key: args.key);
        }),
    FreelanceSignUp.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.FreelanceSignUp();
        }),
    HireSignuRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.HireSignuPage();
        }),
    FreelanceStepOne.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<FreelanceStepOneArgs>(
              orElse: () => const FreelanceStepOneArgs());
          return _i6.FreelanceStepOne(key: args.key);
        }),
    FreelanceStepTwo.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i7.FreelanceStepTwo();
        }),
    FreelanceStepThree.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i8.FreelanceStepThree();
        }),
    FreelanceStepFour.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<FreelanceStepFourArgs>(
              orElse: () => const FreelanceStepFourArgs());
          return _i9.FreelanceStepFour(key: args.key);
        }),
    FreelanceStepFive.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i10.FreelanceStepFive();
        }),
    FreelanceStepCatg.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i11.FreelanceStepCatg();
        }),
    IsAccountValid.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i12.IsAccountValid();
        }),
    HireStepOne.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i13.HireStepOne();
        }),
    HireOtpVerifiction.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i14.HireOtpVerifiction();
        }),
    FeedRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i15.FeedPage();
        }),
    Setting.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i16.Setting();
        }),
    ProfileSheet.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ProfileSheetArgs>();
          return _i17.ProfileSheet(
              key: args.key,
              context: args.context,
              name: args.name,
              bio: args.bio);
        }),
    SearchScreen.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<SearchScreenArgs>(
              orElse: () => const SearchScreenArgs());
          return _i18.SearchScreen(key: args.key);
        }),
    ChangeBioRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ChangeBioRouteArgs>(
              orElse: () => const ChangeBioRouteArgs());
          return _i19.ChangeBioPage(key: args.key);
        }),
    ChangeFeesRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ChangeFeesRouteArgs>(
              orElse: () => const ChangeFeesRouteArgs());
          return _i20.ChangeFeesPage(key: args.key);
        }),
    ChangePhonenumRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i21.ChangePhonenumPage();
        }),
    ChangeTitleRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i22.ChangeTitlePage();
        }),
    UploadWorkRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<UploadWorkRouteArgs>(
              orElse: () => const UploadWorkRouteArgs());
          return _i23.UploadWorkPage(key: args.key);
        }),
    ChangeCatgRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i24.ChangeCatgPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(WelcomeRoute.name, path: '/welcome-page'),
        _i1.RouteConfig(FreelanceSignUp.name, path: '/freelance-sign-up'),
        _i1.RouteConfig(HireSignuRoute.name, path: '/hire-signu-page'),
        _i1.RouteConfig(FreelanceStepOne.name, path: '/freelance-step-one'),
        _i1.RouteConfig(FreelanceStepTwo.name, path: '/freelance-step-two'),
        _i1.RouteConfig(FreelanceStepThree.name, path: '/freelance-step-three'),
        _i1.RouteConfig(FreelanceStepFour.name, path: '/freelance-step-four'),
        _i1.RouteConfig(FreelanceStepFive.name, path: '/freelance-step-five'),
        _i1.RouteConfig(FreelanceStepCatg.name, path: '/freelance-step-catg'),
        _i1.RouteConfig(IsAccountValid.name, path: '/is-account-valid'),
        _i1.RouteConfig(HireStepOne.name, path: '/hire-step-one'),
        _i1.RouteConfig(HireOtpVerifiction.name, path: '/hire-otp-verifiction'),
        _i1.RouteConfig(FeedRoute.name, path: '/feed-page'),
        _i1.RouteConfig(Setting.name, path: '/Setting'),
        _i1.RouteConfig(ProfileSheet.name, path: '/profile-sheet'),
        _i1.RouteConfig(SearchScreen.name, path: '/search-screen'),
        _i1.RouteConfig(ChangeBioRoute.name, path: '/change-bio-page'),
        _i1.RouteConfig(ChangeFeesRoute.name, path: '/change-fees-page'),
        _i1.RouteConfig(ChangePhonenumRoute.name,
            path: '/change-phonenum-page'),
        _i1.RouteConfig(ChangeTitleRoute.name, path: '/change-title-page'),
        _i1.RouteConfig(UploadWorkRoute.name, path: '/upload-work-page'),
        _i1.RouteConfig(ChangeCatgRoute.name, path: '/change-catg-page')
      ];
}

class WelcomeRoute extends _i1.PageRouteInfo<WelcomeRouteArgs> {
  WelcomeRoute({_i2.Key? key})
      : super(name, path: '/welcome-page', args: WelcomeRouteArgs(key: key));

  static const String name = 'WelcomeRoute';
}

class WelcomeRouteArgs {
  const WelcomeRouteArgs({this.key});

  final _i2.Key? key;
}

class FreelanceSignUp extends _i1.PageRouteInfo {
  const FreelanceSignUp() : super(name, path: '/freelance-sign-up');

  static const String name = 'FreelanceSignUp';
}

class HireSignuRoute extends _i1.PageRouteInfo {
  const HireSignuRoute() : super(name, path: '/hire-signu-page');

  static const String name = 'HireSignuRoute';
}

class FreelanceStepOne extends _i1.PageRouteInfo<FreelanceStepOneArgs> {
  FreelanceStepOne({_i2.Key? key})
      : super(name,
            path: '/freelance-step-one', args: FreelanceStepOneArgs(key: key));

  static const String name = 'FreelanceStepOne';
}

class FreelanceStepOneArgs {
  const FreelanceStepOneArgs({this.key});

  final _i2.Key? key;
}

class FreelanceStepTwo extends _i1.PageRouteInfo {
  const FreelanceStepTwo() : super(name, path: '/freelance-step-two');

  static const String name = 'FreelanceStepTwo';
}

class FreelanceStepThree extends _i1.PageRouteInfo {
  const FreelanceStepThree() : super(name, path: '/freelance-step-three');

  static const String name = 'FreelanceStepThree';
}

class FreelanceStepFour extends _i1.PageRouteInfo<FreelanceStepFourArgs> {
  FreelanceStepFour({_i2.Key? key})
      : super(name,
            path: '/freelance-step-four',
            args: FreelanceStepFourArgs(key: key));

  static const String name = 'FreelanceStepFour';
}

class FreelanceStepFourArgs {
  const FreelanceStepFourArgs({this.key});

  final _i2.Key? key;
}

class FreelanceStepFive extends _i1.PageRouteInfo {
  const FreelanceStepFive() : super(name, path: '/freelance-step-five');

  static const String name = 'FreelanceStepFive';
}

class FreelanceStepCatg extends _i1.PageRouteInfo {
  const FreelanceStepCatg() : super(name, path: '/freelance-step-catg');

  static const String name = 'FreelanceStepCatg';
}

class IsAccountValid extends _i1.PageRouteInfo {
  const IsAccountValid() : super(name, path: '/is-account-valid');

  static const String name = 'IsAccountValid';
}

class HireStepOne extends _i1.PageRouteInfo {
  const HireStepOne() : super(name, path: '/hire-step-one');

  static const String name = 'HireStepOne';
}

class HireOtpVerifiction extends _i1.PageRouteInfo {
  const HireOtpVerifiction() : super(name, path: '/hire-otp-verifiction');

  static const String name = 'HireOtpVerifiction';
}

class FeedRoute extends _i1.PageRouteInfo {
  const FeedRoute() : super(name, path: '/feed-page');

  static const String name = 'FeedRoute';
}

class Setting extends _i1.PageRouteInfo {
  const Setting() : super(name, path: '/Setting');

  static const String name = 'Setting';
}

class ProfileSheet extends _i1.PageRouteInfo<ProfileSheetArgs> {
  ProfileSheet(
      {_i2.Key? key,
      required _i2.BuildContext context,
      required String name0,
      required String bio})
      : super(name,
            path: '/profile-sheet',
            args: ProfileSheetArgs(
                key: key, context: context, name: name, bio: bio));

  static const String name = 'ProfileSheet';
}

class ProfileSheetArgs {
  const ProfileSheetArgs(
      {this.key, required this.context, required this.name, required this.bio});

  final _i2.Key? key;

  final _i2.BuildContext context;

  final String name;

  final String bio;
}

class SearchScreen extends _i1.PageRouteInfo<SearchScreenArgs> {
  SearchScreen({_i2.Key? key})
      : super(name, path: '/search-screen', args: SearchScreenArgs(key: key));

  static const String name = 'SearchScreen';
}

class SearchScreenArgs {
  const SearchScreenArgs({this.key});

  final _i2.Key? key;
}

class ChangeBioRoute extends _i1.PageRouteInfo<ChangeBioRouteArgs> {
  ChangeBioRoute({_i2.Key? key})
      : super(name,
            path: '/change-bio-page', args: ChangeBioRouteArgs(key: key));

  static const String name = 'ChangeBioRoute';
}

class ChangeBioRouteArgs {
  const ChangeBioRouteArgs({this.key});

  final _i2.Key? key;
}

class ChangeFeesRoute extends _i1.PageRouteInfo<ChangeFeesRouteArgs> {
  ChangeFeesRoute({_i2.Key? key})
      : super(name,
            path: '/change-fees-page', args: ChangeFeesRouteArgs(key: key));

  static const String name = 'ChangeFeesRoute';
}

class ChangeFeesRouteArgs {
  const ChangeFeesRouteArgs({this.key});

  final _i2.Key? key;
}

class ChangePhonenumRoute extends _i1.PageRouteInfo {
  const ChangePhonenumRoute() : super(name, path: '/change-phonenum-page');

  static const String name = 'ChangePhonenumRoute';
}

class ChangeTitleRoute extends _i1.PageRouteInfo {
  const ChangeTitleRoute() : super(name, path: '/change-title-page');

  static const String name = 'ChangeTitleRoute';
}

class UploadWorkRoute extends _i1.PageRouteInfo<UploadWorkRouteArgs> {
  UploadWorkRoute({_i2.Key? key})
      : super(name,
            path: '/upload-work-page', args: UploadWorkRouteArgs(key: key));

  static const String name = 'UploadWorkRoute';
}

class UploadWorkRouteArgs {
  const UploadWorkRouteArgs({this.key});

  final _i2.Key? key;
}

class ChangeCatgRoute extends _i1.PageRouteInfo {
  const ChangeCatgRoute() : super(name, path: '/change-catg-page');

  static const String name = 'ChangeCatgRoute';
}
