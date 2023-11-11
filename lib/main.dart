import 'package:flutter/material.dart';
import './landingPage.dart';

import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
  setUrlStrategy(PathUrlStrategy());
}

final GoRouter _router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const LandingPage(title: 'evan kim');
      },
      routes: <RouteBase>[
        /*
        GoRoute(
          path: 'artists',
          builder: (BuildContext context, GoRouterState state) {
            return const ArtistsPage(title: 'artists');
          },
        ),
        */
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
