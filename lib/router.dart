import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:overlay_test/overlay_widget.dart';
import 'package:overlay_test/path1.dart';
import 'package:overlay_test/path2.dart';
import './navigation_service.dart';

// GoRouter configuration
final router = GoRouter(
  navigatorKey: NavigationService.navigatorKey,
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const MyOverlay();
      },
    ),
        GoRoute(
      path: '/1',
      builder: (context, state) {
        return const Path1();
      },
    ),
        GoRoute(
      path: '2',
      builder: (context, state) {
        return const Path2();
      },
    ),
 
  ],
);
