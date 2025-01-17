import 'package:auto_route/auto_route.dart';
import 'package:bond/features/home/home_page.dart';
import 'package:bond/routes/guards/auth_guard.dart';
import 'package:flutter/cupertino.dart';

import '../features/app/launch_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LaunchPage, initial: true),
    AutoRoute(page: HomePage, guards: [AuthGuard]),
  ],
)
class AppRouter extends _$AppRouter {
  AppRouter(AuthGuard authGuard) : super(authGuard: authGuard);
}
