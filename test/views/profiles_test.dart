import 'package:fl_clash/views/profiles/profiles.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('profile display helpers', () {
    test('uses one-based numbering for profile titles', () {
      expect(getProfileDisplayTitle(0), '1');
      expect(getProfileDisplayTitle(2), '3');
    });

    test('formats update timestamps to seconds', () {
      final dateTime = DateTime(2026, 7, 5, 22, 18, 36);

      expect(getProfileDisplayTimestamp(dateTime), '2026-07-05 22:18:36');
      expect(getProfileDisplayTimestamp(null), '');
    });
  });
}
