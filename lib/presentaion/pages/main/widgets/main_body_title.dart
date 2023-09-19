import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solid_test/presentaion/providers/main_title_color_provider.dart';

/// title text "Hello there"
/// changes it's color based on background color
/// dependency: [mainTitleColor] provider
class MainBodyTitle extends ConsumerWidget {
  /// constructor
  const MainBodyTitle({super.key});

  static const _fontSize = 32.0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final color = ref.watch(mainTitleColorProvider);

    return AnimatedDefaultTextStyle(
      duration: kThemeAnimationDuration,
      style: TextStyle(
        fontSize: _fontSize,
        fontWeight: FontWeight.w500,
        color: color,
      ),
      child: const Text('Hello there'),
    );
  }
}
