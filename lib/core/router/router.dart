import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:note_app/core/router/routes.dart';
import 'package:note_app/features/home/home_page.dart';
import 'package:note_app/features/home/presentation/view/home_details_page.dart';
import 'package:note_app/features/splash/splash_page.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: Routes.splashPath,
      name: Routes.splashName,
      builder: (BuildContext context, GoRouterState state) {
        return const SplashPage();
      },
    ),
    GoRoute(
      path: Routes.homePath,
      name: Routes.homeName,
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
    ),
    GoRoute(
      path: Routes.homeDetailsPath,
      name: Routes.homeDetailsName,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeDetailsPage();
      },
    ),
  ],
);
