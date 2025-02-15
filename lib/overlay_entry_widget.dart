import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:overlay_test/overlay_service_provider.dart';

class OverlayEntryWidget extends ConsumerWidget {
  const OverlayEntryWidget({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double bottomOffset =
        ref.read(overlayServiceProvider).getBottomOffset();
    return Positioned(
        bottom: bottomOffset,
        left: 50,
        child: Material(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                border: Border.all(color: Colors.green, width: 4)),
            width: 200,
            height: 100,
            child: const Text('message'),
          ),
        ));
  }
}
