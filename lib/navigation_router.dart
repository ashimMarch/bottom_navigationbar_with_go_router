import 'package:bottom_navigationbar_with_go_router/my_screens/my_bottom_navigation_page.dart';
import 'package:bottom_navigationbar_with_go_router/my_screens/my_details.dart';
import 'package:bottom_navigationbar_with_go_router/my_screens/my_home_page.dart';
import 'package:bottom_navigationbar_with_go_router/my_screens/my_search_page.dart';
import 'package:bottom_navigationbar_with_go_router/my_screens/my_settings.dart';
import 'package:bottom_navigationbar_with_go_router/my_screens/my_signin.dart';
import 'package:bottom_navigationbar_with_go_router/my_screens/my_signup.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigationHelper {
  static final NavigationHelper _instance = NavigationHelper._internal();
  static NavigationHelper get instance => _instance;
  
  static late final GoRouter router;

  static final parentNavigatorKey = GlobalKey<NavigatorState>();
  static final homeTabNavigatorKey = GlobalKey<NavigatorState>();
  static final searchTabNavigatorKey = GlobalKey<NavigatorState>();
  static final settingsTabNavigatorKey = GlobalKey<NavigatorState>();

  static const String signUpPath = '/signUp';
  static const String signInPath = '/signIn';
  static const String detailPath = '/detail';
  static const String rootDetailPath = '/rootDetail';

  static const String homePath = '/home';
  static const String settingsPath = '/settings';
  static const String searchPath = '/search';

  NavigationHelper._internal() {
    final routes = <RouteBase>[
      StatefulShellRoute.indexedStack(
        parentNavigatorKey: parentNavigatorKey,
        pageBuilder: (context, state, navigationShell) => getPage(
          child: MyBottomNavigationPage(child: navigationShell), 
          state: state,
        ),
        branches: [
          StatefulShellBranch(
            navigatorKey: homeTabNavigatorKey,
            routes: [
              GoRoute(
                path: homePath,
                pageBuilder: (context, state) => getPage(
                  child: const MyHomePage(),
                  state: state,
                ),  
              ),
            ]
          ),
          StatefulShellBranch(
            navigatorKey: searchTabNavigatorKey,
            routes: [
              GoRoute(
                path: searchPath,
                pageBuilder: (context, state) => getPage(
                  child: const MySearchPage(),
                  state: state,
                ),  
              ),
            ]
          ),
          StatefulShellBranch(
            navigatorKey: settingsTabNavigatorKey,
            routes: [
              GoRoute(
                path: settingsPath,
                pageBuilder: (context, state) {
                  return getPage(
                    child: const MySettingsPage(),
                    state: state,
                  );
                },
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        parentNavigatorKey: parentNavigatorKey,
        path: signUpPath,
        pageBuilder: (context, state) => getPage(
          child: const MySignUpPage(), 
          state: state
        ),
      ),
      GoRoute(
        parentNavigatorKey: parentNavigatorKey,
        path: signInPath,
        pageBuilder: (context, state) => getPage(
          child: const MySignInPage(), 
          state: state
        ),
      ),
      GoRoute(
        path: detailPath,
        pageBuilder: (context, state) => getPage(
          child: const MyDetailPage(), 
          state: state
        ),
      ),
    ];

    router = GoRouter(
      navigatorKey: parentNavigatorKey,
      initialLocation: signUpPath,
      routes: routes,
    );
  }

  static Page getPage({
    required Widget child,
    required GoRouterState state,
  }) {
    return MaterialPage(
      key: state.pageKey,
      child: child,
    );
  }
}