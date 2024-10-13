import 'package:flutter/cupertino.dart';

extension SizeExtension on int {
  SizedBox get h => SizedBox(height: toDouble(), width: 0);

  SizedBox get w => SizedBox(height: 0, width: toDouble());
}
