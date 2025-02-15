import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:overlay_test/overlay_service_provider.dart';

class Path2 extends ConsumerWidget {
  const Path2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
     return  Scaffold(
      appBar: AppBar(
        title: const Text('path2'),
      ),
      body: Center(child: ElevatedButton(onPressed: () {
        ref.read(overlayServiceProvider).removeLastOverlay();
      }, child: Text('remove last overlay')),));
  }
}