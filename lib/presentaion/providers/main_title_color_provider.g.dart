// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_title_color_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mainTitleColorHash() => r'b425cacf464178a07899460adc3b88a01b36d342';

/// provider of main title text color based on computed luminance of
/// background color
/// returns [Colors.white] if luminance > 0.42
/// else return [Colors.black]
///
/// why 0.42 ? [https://en.wikipedia.org/wiki/42_(number)]
///
/// Copied from [mainTitleColor].
@ProviderFor(mainTitleColor)
final mainTitleColorProvider = AutoDisposeProvider<Color>.internal(
  mainTitleColor,
  name: r'mainTitleColorProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$mainTitleColorHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MainTitleColorRef = AutoDisposeProviderRef<Color>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
