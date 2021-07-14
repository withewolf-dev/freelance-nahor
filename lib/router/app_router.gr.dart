// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../pages/auth/auth_flow/freelanceStep_catg.dart' as _i14;
import '../pages/auth/auth_flow/freelanceStep_five.dart' as _i9;
import '../pages/auth/auth_flow/freelanceStep_four.dart' as _i8;
import '../pages/auth/auth_flow/freelanceStep_one.dart' as _i5;
import '../pages/auth/auth_flow/freelanceStep_three.dart' as _i7;
import '../pages/auth/auth_flow/freelanceStep_two.dart' as _i6;
import '../pages/auth/auth_flow/isAccountvalid.dart' as _i15;
import '../pages/auth/auth_flow/testing.dart' as _i16;
import '../pages/auth/freelanceSignuPage.dart' as _i4;
import '../pages/auth/HireSignupPage.dart' as _i10;
import '../pages/feedpage.dart' as _i11;
import '../pages/ProfileSheet.dart' as _i13;
import '../pages/setting.dart' as _i12;
import '../pages/welcomepage.dart' as _i3;

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
    FreelanceStepOne.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<FreelanceStepOneArgs>(
              orElse: () => const FreelanceStepOneArgs());
          return _i5.FreelanceStepOne(key: args.key);
        }),
    FreelanceStepTwo.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.FreelanceStepTwo();
        }),
    FreelanceStepThree.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i7.FreelanceStepThree();
        }),
    FreelanceStepFour.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<FreelanceStepFourArgs>(
              orElse: () => const FreelanceStepFourArgs());
          return _i8.FreelanceStepFour(key: args.key);
        }),
    FreelanceStepFive.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i9.FreelanceStepFive();
        }),
    HireSignuRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i10.HireSignuPage();
        }),
    FeedRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i11.FeedPage();
        }),
    Setting.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i12.Setting();
        }),
    ProfileSheet.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ProfileSheetArgs>();
          return _i13.ProfileSheet(key: args.key, context: args.context);
        }),
    FreelanceStepCatg.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i14.FreelanceStepCatg();
        }),
    IsAccountValid.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i15.IsAccountValid();
        }),
    Testing.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i16.Testing();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(WelcomeRoute.name, path: '/'),
        _i1.RouteConfig(FreelanceSignUp.name, path: '/freelance-sign-up'),
        _i1.RouteConfig(FreelanceStepOne.name, path: '/freelance-step-one'),
        _i1.RouteConfig(FreelanceStepTwo.name, path: '/freelance-step-two'),
        _i1.RouteConfig(FreelanceStepThree.name, path: '/freelance-step-three'),
        _i1.RouteConfig(FreelanceStepFour.name, path: '/freelance-step-four'),
        _i1.RouteConfig(FreelanceStepFive.name, path: '/freelance-step-five'),
        _i1.RouteConfig(HireSignuRoute.name, path: '/hire-signu-page'),
        _i1.RouteConfig(FeedRoute.name, path: '/feed-page'),
        _i1.RouteConfig(Setting.name, path: '/Setting'),
        _i1.RouteConfig(ProfileSheet.name, path: '/profile-sheet'),
        _i1.RouteConfig(FreelanceStepCatg.name, path: '/freelance-step-catg'),
        _i1.RouteConfig(IsAccountValid.name, path: '/is-account-valid'),
        _i1.RouteConfig(Testing.name, path: '/Testing')
      ];
}

class WelcomeRoute extends _i1.PageRouteInfo<WelcomeRouteArgs> {
  WelcomeRoute({_i2.Key? key})
      : super(name, path: '/', args: WelcomeRouteArgs(key: key));

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

class HireSignuRoute extends _i1.PageRouteInfo {
  const HireSignuRoute() : super(name, path: '/hire-signu-page');

  static const String name = 'HireSignuRoute';
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
  ProfileSheet({_i2.Key? key, required _i2.BuildContext context})
      : super(name,
            path: '/profile-sheet',
            args: ProfileSheetArgs(key: key, context: context));

  static const String name = 'ProfileSheet';
}

class ProfileSheetArgs {
  const ProfileSheetArgs({this.key, required this.context});

  final _i2.Key? key;

  final _i2.BuildContext context;
}

class FreelanceStepCatg extends _i1.PageRouteInfo {
  const FreelanceStepCatg() : super(name, path: '/freelance-step-catg');

  static const String name = 'FreelanceStepCatg';
}

class IsAccountValid extends _i1.PageRouteInfo {
  const IsAccountValid() : super(name, path: '/is-account-valid');

  static const String name = 'IsAccountValid';
}

class Testing extends _i1.PageRouteInfo {
  const Testing() : super(name, path: '/Testing');

  static const String name = 'Testing';
}
