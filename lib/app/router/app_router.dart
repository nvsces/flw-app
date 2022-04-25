import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flw_app/login/login_page.dart';

import '../../pages/base_page.dart';
import '../../pages/profile_page.dart';
import '../../pages/trip_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    // AutoRoute(page: LoginPage, initial: true),
    AutoRoute(page: BasePage, initial: true, children: [
      AutoRoute(page: TripPage),
      AutoRoute(page: ProfilePage),
    ]),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
