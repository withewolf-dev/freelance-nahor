// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../pages/feedpage.dart' as _i3;
import '../pages/ProfileSheet.dart' as _i5;
import '../pages/setting.dart' as _i4;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    FeedRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.FeedPage();
        }),
    Setting.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.Setting();
        }),
    ProfileSheet.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ProfileSheetArgs>();
          return _i5.ProfileSheet(key: args.key, context: args.context);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(FeedRoute.name, path: '/'),
        _i1.RouteConfig(Setting.name, path: '/Setting'),
        _i1.RouteConfig(ProfileSheet.name, path: '/profile-sheet')
      ];
}

class FeedRoute extends _i1.PageRouteInfo {
  const FeedRoute() : super(name, path: '/');

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
