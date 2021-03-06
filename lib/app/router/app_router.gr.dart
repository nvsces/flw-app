// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    BaseRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const BasePage());
    },
    TripRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const TripPage());
    },
    ProfileRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ProfilePage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(BaseRoute.name, path: '/', children: [
          RouteConfig(TripRoute.name,
              path: 'trip-page', parent: BaseRoute.name),
          RouteConfig(ProfileRoute.name,
              path: 'profile-page', parent: BaseRoute.name)
        ])
      ];
}

/// generated route for
/// [BasePage]
class BaseRoute extends PageRouteInfo<void> {
  const BaseRoute({List<PageRouteInfo>? children})
      : super(BaseRoute.name, path: '/', initialChildren: children);

  static const String name = 'BaseRoute';
}

/// generated route for
/// [TripPage]
class TripRoute extends PageRouteInfo<void> {
  const TripRoute() : super(TripRoute.name, path: 'trip-page');

  static const String name = 'TripRoute';
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: 'profile-page');

  static const String name = 'ProfileRoute';
}
