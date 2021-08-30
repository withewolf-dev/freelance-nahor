// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../pages/auth/auth_flow/freelance/freelanceStep_one.dart' as _i6;
import '../pages/auth/auth_flow/hire/hireOtpVerification.dart' as _i8;
import '../pages/auth/auth_flow/hire/hirestepOne.dart' as _i7;
import '../pages/auth/freelanceSignuPage.dart' as _i4;
import '../pages/auth/HireSignupPage.dart' as _i5;
import '../pages/feedpage.dart' as _i9;
import '../pages/ProfileSheet.dart' as _i11;
import '../pages/settings/changebio.dart' as _i13;
import '../pages/settings/changecatg.dart' as _i18;
import '../pages/settings/changefees.dart' as _i14;
import '../pages/settings/changePhonenum.dart' as _i15;
import '../pages/settings/changetitle.dart' as _i16;
import '../pages/settings/setting.dart' as _i10;
import '../pages/settings/uploadwork.dart' as _i17;
import '../pages/welcomepage.dart' as _i3;
import '../widgets/searchscreen/searchScreen.dart' as _i12;

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
    HireStepOne.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i7.HireStepOne();
        }),
    HireOtpVerifiction.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i8.HireOtpVerifiction();
        }),
    FeedRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i9.FeedPage();
        }),
    Setting.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args =
              data.argsAs<SettingArgs>(orElse: () => const SettingArgs());
          return _i10.Setting(key: args.key);
        }),
    ProfileSheet.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ProfileSheetArgs>();
          return _i11.ProfileSheet(
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
          return _i12.SearchScreen(key: args.key);
        }),
    ChangeBioRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ChangeBioRouteArgs>(
              orElse: () => const ChangeBioRouteArgs());
          return _i13.ChangeBioPage(key: args.key);
        }),
    ChangeFeesRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ChangeFeesRouteArgs>(
              orElse: () => const ChangeFeesRouteArgs());
          return _i14.ChangeFeesPage(key: args.key);
        }),
    ChangePhonenumRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ChangePhonenumRouteArgs>(
              orElse: () => const ChangePhonenumRouteArgs());
          return _i15.ChangePhonenumPage(key: args.key);
        }),
    ChangeTitleRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i16.ChangeTitlePage();
        }),
    UploadWorkRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<UploadWorkRouteArgs>(
              orElse: () => const UploadWorkRouteArgs());
          return _i17.UploadWorkPage(key: args.key);
        }),
    ChangeCatgRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i18.ChangeCatgPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(WelcomeRoute.name, path: '/welcome-page'),
        _i1.RouteConfig(FreelanceSignUp.name, path: '/freelance-sign-up'),
        _i1.RouteConfig(HireSignuRoute.name, path: '/hire-signu-page'),
        _i1.RouteConfig(FreelanceStepOne.name, path: '/freelance-step-one'),
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

class Setting extends _i1.PageRouteInfo<SettingArgs> {
  Setting({_i2.Key? key})
      : super(name, path: '/Setting', args: SettingArgs(key: key));

  static const String name = 'Setting';
}

class SettingArgs {
  const SettingArgs({this.key});

  final _i2.Key? key;
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

class ChangePhonenumRoute extends _i1.PageRouteInfo<ChangePhonenumRouteArgs> {
  ChangePhonenumRoute({_i2.Key? key})
      : super(name,
            path: '/change-phonenum-page',
            args: ChangePhonenumRouteArgs(key: key));

  static const String name = 'ChangePhonenumRoute';
}

class ChangePhonenumRouteArgs {
  const ChangePhonenumRouteArgs({this.key});

  final _i2.Key? key;
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
