import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solid_test/presentaion/pages/main/widgets/main_body_title.dart';
import 'package:solid_test/presentaion/providers/random_colors_provider.dart';

/// content of Main Page
class MainBody extends ConsumerWidget {
  /// constructor
  const MainBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final randomColor = ref.watch(randomColorsProvider);

    return GestureDetector(
      onTap: () {
        ref.read(randomColorsProvider.notifier).generateRandomColor();
      },
      child: AnimatedContainer(
        duration: kThemeAnimationDuration,
        color: randomColor,
        alignment: Alignment.center,
        child: const MainBodyTitle(),
      ),
    );
  }
}
