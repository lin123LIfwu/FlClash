import 'package:fl_clash/views/profiles/edit.dart';
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

  group('profile edit label helpers', () {
    test('keeps provider label hidden behind display title', () {
      expect(getEditProfileDisplayLabel('魔戒.net', '1'), '1');
      expect(getEditProfileDisplayLabel('魔戒.net', null), '魔戒.net');
    });

    test('preserves original label when display title is unchanged', () {
      expect(
        getEditProfileLabelForSave(
          inputLabel: '1',
          originalLabel: '魔戒.net',
          displayLabel: '1',
        ),
        '魔戒.net',
      );
      expect(
        getEditProfileLabelForSave(
          inputLabel: '自定义',
          originalLabel: '魔戒.net',
          displayLabel: '1',
        ),
        '自定义',
      );
    });
  });
}
