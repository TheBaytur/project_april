import 'dart:ui';
import 'package:flutter/material.dart';

class KConstants {
  static const String themeModeKey = 'themeModeKey';
}

class KTextStyle {
  static const TextStyle titleTealText = TextStyle(
    color: Colors.teal,
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle descriptionTealText = TextStyle(
      fontSize: 16.0);
}

class KValue {
  static const String basicLayout = 'Basic Layout';
  static const String cleanUi = 'Clean UI';
  static const String fixedBug = 'Fixed Bugs';
  static const String testDemo = 'Test Demo';
}
