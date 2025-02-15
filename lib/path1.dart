import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:overlay_test/overlay_entry_widget.dart';
import 'package:overlay_test/overlay_service_provider.dart';

class Path1 extends ConsumerWidget {
  const Path1({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('path1'),
      ),
      body: Center(child: ElevatedButton(onPressed: () {
        final  OverlayState overlayState = Overlay.of(context);
        final OverlayEntry overlayEntry = OverlayEntry(
                  builder: (context) {
                    return const OverlayEntryWidget();
                  },
                );

        overlayState.insert( overlayEntry);
        ref.read(overlayServiceProvider).addOverlay(overlayEntry);
      }, child: Text('add overlay')),));
  }
}