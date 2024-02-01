import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Display text style
  static get displaySmallBold => theme.textTheme.displaySmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get displaySmallLime600 => theme.textTheme.displaySmall!.copyWith(
        color: appTheme.lime600,
      );
  // Label text style
  static get labelLargeGray900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray900,
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
