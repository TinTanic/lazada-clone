import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get unbounded {
    return copyWith(
      fontFamily: 'Unbounded',
    );
  }

  TextStyle get perpetuaTitlingMT {
    return copyWith(
      fontFamily: 'Perpetua Titling MT',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body text style
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.7),
      );
  static get bodyMediumBluegray100 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray100,
      );
  static get bodyMediumOpenSansPrimaryContainer =>
      theme.textTheme.bodyMedium!.openSans.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodyMediumOpenSansPrimaryContainer_1 =>
      theme.textTheme.bodyMedium!.openSans.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodyMediumUnboundedOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.unbounded.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.49),
        fontWeight: FontWeight.w300,
      );
  static get bodySmallOpenSansPrimaryContainer =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 12.fSize,
      );
// Label text style
  static get labelLarge12 => theme.textTheme.labelLarge!.copyWith(
        fontSize: 12.fSize,
      );
  static get labelMediumOnPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w500,
      );
// Poppins text style
  static get poppinsBlack900 => TextStyle(
        color: appTheme.black900,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w600,
      ).poppins;
// Roboto text style
  static get robotoBlack900 => TextStyle(
        color: appTheme.black900,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w400,
      ).roboto;
  static get robotoBlack900Regular => TextStyle(
        color: appTheme.black900,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w400,
      ).roboto;
// Title text style
  static get titleMediumInter => theme.textTheme.titleMedium!.inter.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallInter => theme.textTheme.titleSmall!.inter.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallInterBluegray10003 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.blueGray10003,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallInterMedium =>
      theme.textTheme.titleSmall!.inter.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 15.fSize,
      );
  static get titleSmallOpenSansPrimaryContainer =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
}
