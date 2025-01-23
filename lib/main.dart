import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

GoRouter router = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      path: '/home',
      builder: (context, state) => HomePage(),
      routes: [
        GoRoute(
          path: '/details',
          builder: (context, state) => HomeDetails(),
        ),
      ],
    ),
  ],
);

HomeDetails() {
}

HomePage() {
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeDetails(),
      debugShowCheckedModeBanner: false,
      // routerConfig: router,
    );
  }
}