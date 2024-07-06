import 'package:flutter/material.dart';
import './landingPage.dart';

import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'package:go_router/go_router.dart';
import 'subPages/career.dart';
import 'subPages/music.dart';
import 'subPages/projects.dart';
import 'subPages/thoughts.dart';

import 'subPages/jade_and_evan.dart';

import 'fade_transition_page.dart';

void main() {
  runApp(MyApp());
  setUrlStrategy(PathUrlStrategy());
}

final GoRouter _router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => FadeTransitionPage(
        child: const LandingPage(title: 'evan kim'),
        key: state.pageKey,
      ),
      routes: <RouteBase>[
        GoRoute(
          path: 'career',
          pageBuilder: (context, state) => FadeTransitionPage(
            child: const CareerPage(title: 'Career'),
            key: state.pageKey,
          ),
        ),
        GoRoute(
          path: 'music',
          pageBuilder: (context, state) => FadeTransitionPage(
            child: const MusicPage(title: 'Music'),
            key: state.pageKey,
          ),
        ),
        GoRoute(
          path: 'projects',
          pageBuilder: (context, state) => FadeTransitionPage(
            child: const ProjectsPage(title: 'Projects'),
            key: state.pageKey,
          ),
        ),
        GoRoute(
          path: 'thoughts',
          pageBuilder: (context, state) => FadeTransitionPage(
            child: const ThoughtsPage(title: 'Thoughts'),
            key: state.pageKey,
          ),
        ),
        GoRoute(
          path: 'jadeandevan',
          pageBuilder: (context, state) => FadeTransitionPage(
            child: const JadeAndEvanPage(title: 'jade & evan'),
            key: state.pageKey,
          ),
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // Define your custom theme here
  final ThemeData customTheme = ThemeData(
    primaryColor: const Color(0xFFFAFAFA), // #FAFAFA in hexadecimal
    scaffoldBackgroundColor: const Color(0xFF202123), // #202123 in hexadecimal
    // You can define other theme properties here as well
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    /* return MaterialApp(
      title: 'evan kim',
      theme: ThemeData(
        // Define the custom primary color
        primaryColor: const Color(0xFFFAFAFA), // #202123 in hexadecimal
        scaffoldBackgroundColor: const Color(0xFF202123),
        // You can also define other theme properties as needed
        // For example, you can set accentColor, textTheme, etc.
      ),
      home: const LandingPage(title: 'evan kim'),
    );
    */

    return MaterialApp.router(
      routerConfig: _router,
      theme: customTheme, // Apply the custom theme here
    );
  }
}
