import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body text style
  static get bodyMediumBlack90001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90001,
      );
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
// Label text style
  static get labelLargeWhiteA70002SemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA70002,
        fontWeight: FontWeight.w600,
      );
// Title text style
  static get titleLargePrimaryContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeWhiteA70001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA70001,
        fontWeight: FontWeight.w400,
      );
}
