import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:test_saham_rakyat/utils/helper.dart';

void main() {
  test("Return Color Value", () {
    String hex = '#FFFFFF';

    expect(Helper.hexCodeToColor(hex), const Color(0xffffffff));
  });
}
