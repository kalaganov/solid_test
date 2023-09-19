// this is provider template uses for code generation
// so some rules are excessive but it's out of scope of this test task
// so I suppressed them

// ignore_for_file: prefer-match-file-name
import 'dart:math' show Random;

import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'random_colors_provider.g.dart';

/// provider that generates random colors
@riverpod
class RandomColors extends _$RandomColors {
  static const _alpha = 255;
  static const _colorChannelMaxValue = 256;
  static final _rnd = Random();

  /// generates random value in range 0-255 inclusive
  static int get _nextRandomColorChannelValue {
    return _rnd.nextInt(_colorChannelMaxValue);
  }

  /// generates random value in range 0-255 inclusive
  static Color get _nextRandomColor {
    return Color.fromARGB(
      _alpha,
      _nextRandomColorChannelValue,
      _nextRandomColorChannelValue,
      _nextRandomColorChannelValue,
    );
  }

  @override
  Color build() => _nextRandomColor;

  /// call this method to generate new random color
  void generateRandomColor() => state = _nextRandomColor;
}
