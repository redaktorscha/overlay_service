import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:overlay_test/navigation_service.dart';
import './overlay_service.dart';

final overlayServiceProvider = Provider.autoDispose<OverlayService>((ref) {
  ref.keepAlive();
  return OverlayService();
});
