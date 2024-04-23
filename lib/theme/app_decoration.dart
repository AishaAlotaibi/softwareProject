import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray100,
      );
  static BoxDecoration get fillPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
      );
// Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.whiteA70001,
        border: Border(
          bottom: BorderSide(
            color: appTheme.black90001,
            width: 20.h,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          )
        ],
      );
  static BoxDecoration get outlineBlack90001 => BoxDecoration(
        color: appTheme.whiteA70001,
        border: Border(
          bottom: BorderSide(
            color: appTheme.black90001,
            width: 13.h,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              2.72,
            ),
          )
        ],
      );
  static BoxDecoration get outlineBlack900011 => BoxDecoration();
  static BoxDecoration get outlineBlack900012 => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: appTheme.black90001,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          )
        ],
      );
  static BoxDecoration get outlineBlack900013 => BoxDecoration();
}

class BorderRadiusStyle {
  // Rounded borders
  static BorderRadius get roundedBorder84 => BorderRadius.circular(
        84.h,
      );
}
