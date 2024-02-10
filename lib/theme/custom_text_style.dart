import 'package:flutter/material.dart';
import 'package:flutter_1/theme/theme_helper.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBluegray700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray700,
      );
  // Headline text style
  static get headlineSmallGray5001 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray5001,
      );
  static get headlineSmallWhiteA700 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.whiteA700,
      );
}

extension on TextStyle {
  TextStyle get tiroDevanagariHindi {
    return copyWith(
      fontFamily: 'Tiro Devanagari Hindi',
    );
  }
}
