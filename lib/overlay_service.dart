import 'package:flutter/material.dart';
import 'package:overlay_test/navigation_service.dart';

class OverlayService {
  List<OverlayEntry> overlayEntries = [];
  double bottomOffset = 50.0;
  OverlayService();

  double getBottomOffset() {
    return bottomOffset;
  }

  void recalculateBottomOffset() {
    bottomOffset = 50;
  }

  void incrementBottomOffset() {
    bottomOffset += 10;
  }

  void decrementBottomOffset() {
    bottomOffset -= 10;
  }

  void addOverlay(OverlayEntry overlayEntry) {
    overlayEntries.add(overlayEntry);
    incrementBottomOffset();
    debugPrint('overlayEntries.length: ${overlayEntries.length}');
  }

  removeLastOverlay() {
    final lastOverlay = overlayEntries.last;
    lastOverlay.remove();
    overlayEntries.removeLast();
    decrementBottomOffset();
    if (overlayEntries.isEmpty) {
      recalculateBottomOffset();
    }

    debugPrint('overlayEntries.length: ${overlayEntries.length}');
  }

  clearAllOverlays() {
    for (final entry in overlayEntries) {
      entry.remove();
    }
    overlayEntries.clear();
    recalculateBottomOffset();
  }
}
