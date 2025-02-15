import 'package:flutter/material.dart';
import 'package:overlay_test/navigation_service.dart';
import 'package:overlay_test/overlay_service_provider.dart';
import './router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // builder: (context, child) {
      //   return Material(child: Stack(
      //     children: [
      //       child ?? Container(),
      //     Overlay(
      //         initialEntries: [
      //           OverlayEntry(
      //             builder: (context) {
      //               return Positioned(
      //                 bottom: 50,
      //                 right: 50,
      //                 child: Icon(
      //                   Icons.online_prediction,
      //                   color: Colors.grey,
      //                 ),
      //               );
      //             },
      //           ),
      //         ],
      //       ),
           
      //     ],
      //   ));
      // },
    );
  }
}
