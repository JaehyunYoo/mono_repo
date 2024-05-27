import 'package:flutter_test/flutter_test.dart';

import 'package:core/core.dart';

void main() {
  test('adds one to input values', () {
    PB.d(message: 'DEBUG 입니다.');
    PB.e(message: 'ERROR 입니다.');
    PB.f(message: 'FATAL입니다.');
    PB.i(message: 'INFO입니다.');
    PB.w(message: 'WARNING 입니다.');
    PB.l(message: 'LOG 입니다.');
  });
}
