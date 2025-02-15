import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
        debugPrint('overlayState: $overlayState');
        final double offset = ref.read(overlayServiceProvider).getBottomOffset();
        final OverlayEntry overlayEntry = OverlayEntry(
                  builder: (context) {
                    return Positioned(
                      bottom: offset,
                      left: 50,
                      child: Container( decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
    border: Border.all(color: Colors.green, width: 4)
  ), width: 200, height: 100,child: Text('message'),),
                    );
                  },
                );

        overlayState.insert( overlayEntry);
        ref.read(overlayServiceProvider).addOverlay(overlayEntry);
      }, child: Text('add overlay')),));
  }
}