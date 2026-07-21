import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/ui/home/view/home_page.dart';
import '../../features/home/ui/home_details/view/home_details_page.dart';
import '../../features/splash/splash_page.dart';
import 'routes.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: Routes.splashPage,
      name: Routes.splashPage,
      builder: (BuildContext context, GoRouterState state) {
        return const SplashPage();
      },
    ),
    GoRoute(
      path: Routes.homePage,
      name: Routes.homePage,
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
    ),
    GoRoute(
      path: Routes.homeDetailsPage,
      name: Routes.homeDetailsPage,
      builder: (BuildContext context, GoRouterState state) {
        return HomeDetailsPage();
      },
    ),
  ],
);
