import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:overlay_test/overlay_entry_widget.dart';
import 'package:overlay_test/overlay_service_provider.dart';
import 'package:overlay_test/path1.dart';
import 'package:overlay_test/path2.dart';

class MyOverlay extends ConsumerWidget {
  const MyOverlay({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Overlay Example'),
      ),
      body: Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Path1()),
              );
            },
            child: const Text('go Path1'),
          ),
          SizedBox(width: 24),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Path2()),
                );
              },
              child: const Text('go Path2')),
          SizedBox(width: 24),
          ElevatedButton(
            onPressed: () {
              ref.read(overlayServiceProvider).removeLastOverlay();
            },
            child: const Text('removeLastOverlay'),
          ),
          SizedBox(width: 24),
          ElevatedButton(
            onPressed: () {
              // final OverlayState overlayState = Overlay.of(context);
              // final OverlayEntry overlayEntry = OverlayEntry(
              //   builder: (context) {
              //     return const OverlayEntryWidget();
              //   },
              // );

              // overlayState.insert(overlayEntry);
              ref.read(overlayServiceProvider).addOverlay();
            },
            child: const Text('add Overlay'),
          ),
          SizedBox(width: 24),
          ElevatedButton(
            onPressed: () {
              ref.read(overlayServiceProvider).clearAllOverlays();
            },
            child: const Text('remove all Overlays'),
          ),
        ]),
      ),
    );
  }

  // void showOverlay(BuildContext context, WidgetRef ref) {
  //   OverlayEntry overlayEntry = OverlayEntry(builder: (context) {
  //     return Positioned(
  //       bottom: 50,
  //       right: 50,
  //       child: Icon(
  //         Icons.online_prediction,
  //         color: Colors.greenAccent,
  //       ),
  //     );
  //   });

  //   ref.read(overlayServiceProvider).addOverlay(overlayEntry);
  // }
}
