// this is provider template uses for code generation
// so some rules are excessive but it's out of scope of this test task
// so I suppressed them

// ignore_for_file: avoid-unused-parameters
// ignore_for_file: prefer-match-file-name

import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:solid_test/presentaion/providers/random_colors_provider.dart';

part 'main_title_color_provider.g.dart';

/// main title text color provider
/// calculate color based on background color luminance
/// returns [Colors.black] if luminance > 0.42
/// else return [Colors.white]
///
/// why 0.42 ? [https://en.wikipedia.org/wiki/42_(number)]
@riverpod
Color mainTitleColor(MainTitleColorRef ref) {
  const double luminanceThreshold = 0.42;
  final nextBackgroundColor = ref.watch(randomColorsProvider);
  final luminance = nextBackgroundColor.computeLuminance();

  return luminance > luminanceThreshold ? Colors.black : Colors.white;
}
