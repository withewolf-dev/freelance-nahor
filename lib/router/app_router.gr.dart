// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../pages/auth/auth_flow/freelance/registration.dart' as _i5;
import '../pages/auth/auth_flow/hire/hireSignup.dart' as _i6;
import '../pages/auth/FreelanceSignup.dart' as _i4;
import '../pages/feedpage.dart' as _i7;
import '../pages/freelance-request-details.dart' as _i18;
import '../pages/notification.dart' as _i17;
import '../pages/request.dart' as _i16;
import '../pages/settings/changebio.dart' as _i10;
import '../pages/settings/changecatg.dart' as _i15;
import '../pages/settings/changefees.dart' as _i11;
import '../pages/settings/changePhonenum.dart' as _i12;
import '../pages/settings/changePric.dart' as _i19;
import '../pages/settings/changetitle.dart' as _i13;
import '../pages/settings/setting.dart' as _i8;
import '../pages/settings/uploadwork.dart' as _i14;
import '../pages/welcomepage.dart' as _i3;
import '../widgets/searchscreen/searchScreen.dart' as _i9;

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
    RegistrationForVerification.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<RegistrationForVerificationArgs>(
              orElse: () => const RegistrationForVerificationArgs());
          return _i5.RegistrationForVerification(key: args.key);
        }),
    HireSignuRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.HireSignuPage();
        }),
    FeedRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.FeedPage();
        }),
    Setting.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args =
              data.argsAs<SettingArgs>(orElse: () => const SettingArgs());
          return _i8.Setting(key: args.key);
        }),
    SearchScreen.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<SearchScreenArgs>(
              orElse: () => const SearchScreenArgs());
          return _i9.SearchScreen(key: args.key);
        }),
    ChangeBioRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ChangeBioRouteArgs>(
              orElse: () => const ChangeBioRouteArgs());
          return _i10.ChangeBioPage(key: args.key);
        }),
    ChangeFeesRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ChangeFeesRouteArgs>(
              orElse: () => const ChangeFeesRouteArgs());
          return _i11.ChangeFeesPage(key: args.key);
        }),
    ChangePhonenumRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ChangePhonenumRouteArgs>(
              orElse: () => const ChangePhonenumRouteArgs());
          return _i12.ChangePhonenumPage(key: args.key);
        }),
    ChangeTitleRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i13.ChangeTitlePage();
        }),
    UploadWorkRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<UploadWorkRouteArgs>(
              orElse: () => const UploadWorkRouteArgs());
          return _i14.UploadWorkPage(key: args.key);
        }),
    ChangeCatgRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ChangeCatgRouteArgs>(
              orElse: () => const ChangeCatgRouteArgs());
          return _i15.ChangeCatgPage(key: args.key);
        }),
    RequestRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final pathParams = data.pathParams;
          final args = data.argsAs<RequestRouteArgs>(
              orElse: () => RequestRouteArgs(
                  freelancerId: pathParams.getString('freelancerId')));
          return _i16.RequestPage(
              key: args.key, freelancerId: args.freelancerId);
        }),
    NotificationScreen.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<NotificationScreenArgs>(
              orElse: () => const NotificationScreenArgs());
          return _i17.NotificationScreen(key: args.key);
        }),
    FreelanceReqDetails.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i18.FreelanceReqDetails();
        }),
    ChangePriceRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ChangePriceRouteArgs>(
              orElse: () => const ChangePriceRouteArgs());
          return _i19.ChangePricePage(key: args.key);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(WelcomeRoute.name, path: '/welcome-page'),
        _i1.RouteConfig(FreelanceSignUp.name, path: '/freelance-sign-up'),
        _i1.RouteConfig(RegistrationForVerification.name,
            path: '/registration-for-verification'),
        _i1.RouteConfig(HireSignuRoute.name, path: '/hire-signu-page'),
        _i1.RouteConfig(FeedRoute.name, path: '/feed-page'),
        _i1.RouteConfig(Setting.name, path: '/Setting'),
        _i1.RouteConfig(SearchScreen.name, path: '/search-screen'),
        _i1.RouteConfig(ChangeBioRoute.name, path: '/change-bio-page'),
        _i1.RouteConfig(ChangeFeesRoute.name, path: '/change-fees-page'),
        _i1.RouteConfig(ChangePhonenumRoute.name,
            path: '/change-phonenum-page'),
        _i1.RouteConfig(ChangeTitleRoute.name, path: '/change-title-page'),
        _i1.RouteConfig(UploadWorkRoute.name, path: '/upload-work-page'),
        _i1.RouteConfig(ChangeCatgRoute.name, path: '/change-catg-page'),
        _i1.RouteConfig(RequestRoute.name, path: '/request-page'),
        _i1.RouteConfig(NotificationScreen.name, path: '/notification-screen'),
        _i1.RouteConfig(FreelanceReqDetails.name,
            path: '/freelance-req-details'),
        _i1.RouteConfig(ChangePriceRoute.name, path: '/change-price-page')
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

class RegistrationForVerification
    extends _i1.PageRouteInfo<RegistrationForVerificationArgs> {
  RegistrationForVerification({_i2.Key? key})
      : super(name,
            path: '/registration-for-verification',
            args: RegistrationForVerificationArgs(key: key));

  static const String name = 'RegistrationForVerification';
}

class RegistrationForVerificationArgs {
  const RegistrationForVerificationArgs({this.key});

  final _i2.Key? key;
}

class HireSignuRoute extends _i1.PageRouteInfo {
  const HireSignuRoute() : super(name, path: '/hire-signu-page');

  static const String name = 'HireSignuRoute';
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

class ChangeCatgRoute extends _i1.PageRouteInfo<ChangeCatgRouteArgs> {
  ChangeCatgRoute({_i2.Key? key})
      : super(name,
            path: '/change-catg-page', args: ChangeCatgRouteArgs(key: key));

  static const String name = 'ChangeCatgRoute';
}

class ChangeCatgRouteArgs {
  const ChangeCatgRouteArgs({this.key});

  final _i2.Key? key;
}

class RequestRoute extends _i1.PageRouteInfo<RequestRouteArgs> {
  RequestRoute({_i2.Key? key, required String freelancerId})
      : super(name,
            path: '/request-page',
            args: RequestRouteArgs(key: key, freelancerId: freelancerId));

  static const String name = 'RequestRoute';
}

class RequestRouteArgs {
  const RequestRouteArgs({this.key, required this.freelancerId});

  final _i2.Key? key;

  final String freelancerId;
}

class NotificationScreen extends _i1.PageRouteInfo<NotificationScreenArgs> {
  NotificationScreen({_i2.Key? key})
      : super(name,
            path: '/notification-screen',
            args: NotificationScreenArgs(key: key));

  static const String name = 'NotificationScreen';
}

class NotificationScreenArgs {
  const NotificationScreenArgs({this.key});

  final _i2.Key? key;
}

class FreelanceReqDetails extends _i1.PageRouteInfo {
  const FreelanceReqDetails() : super(name, path: '/freelance-req-details');

  static const String name = 'FreelanceReqDetails';
}

class ChangePriceRoute extends _i1.PageRouteInfo<ChangePriceRouteArgs> {
  ChangePriceRoute({_i2.Key? key})
      : super(name,
            path: '/change-price-page', args: ChangePriceRouteArgs(key: key));

  static const String name = 'ChangePriceRoute';
}

class ChangePriceRouteArgs {
  const ChangePriceRouteArgs({this.key});

  final _i2.Key? key;
}
