import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeBluegray700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray700,
      );
  static get bodyLargeErrorContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
        fontSize: 16.fSize,
      );
  static get bodyLargeErrorContainer19 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
        fontSize: 19.fSize,
      );
  static get bodyLargeErrorContainer_1 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
      );
  static get bodyLargeGray60001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray60001,
      );
  static get bodyLargeGray700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray700,
        fontSize: 18.fSize,
      );
  static get bodyLargeGray80002 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray80002,
        fontSize: 16.fSize,
      );
  static get bodyLargeInriaSansErrorContainer =>
      theme.textTheme.bodyLarge!.inriaSans.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
        fontSize: 18.fSize,
      );
  static get bodyLargeInterErrorContainer =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(0.52),
        fontSize: 16.fSize,
      );
  static get bodyLargeInterErrorContainer16 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(0.46),
        fontSize: 16.fSize,
      );
  static get bodyLargeInterWhiteA70002 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.whiteA70002,
        fontSize: 16.fSize,
      );
  static get bodyLargeRobotoBluegray900 =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: appTheme.blueGray900,
        fontSize: 16.fSize,
      );
  static get bodyLargeWhiteA70002 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA70002,
        fontSize: 16.fSize,
      );
  static get bodyLargeWhiteA7000219 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA70002,
        fontSize: 19.fSize,
      );
  static get bodyLargeWhiteA70002_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA70002,
      );
  static get bodyMediumBrawlerGray60001 =>
      theme.textTheme.bodyMedium!.brawler.copyWith(
        color: appTheme.gray60001,
        fontSize: 15.fSize,
      );
  static get bodyMediumBrawlerGray70001 =>
      theme.textTheme.bodyMedium!.brawler.copyWith(
        color: appTheme.gray70001,
        fontSize: 13.fSize,
      );
  static get bodyMediumBrawlerGray70004 =>
      theme.textTheme.bodyMedium!.brawler.copyWith(
        color: appTheme.gray70004,
        fontSize: 13.fSize,
      );
  static get bodyMediumBrawlerGray80002 =>
      theme.textTheme.bodyMedium!.brawler.copyWith(
        color: appTheme.gray80002,
      );
  static get bodyMediumBrawlerIndigoA700 =>
      theme.textTheme.bodyMedium!.brawler.copyWith(
        color: appTheme.indigoA700,
        fontSize: 13.fSize,
      );
  static get bodyMediumGray70002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray70002,
        fontSize: 15.fSize,
      );
  static get bodyMediumInterErrorContainer =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(0.52),
        fontSize: 13.fSize,
      );
  static get bodyMediumInterGray60002 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.gray60002,
      );
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmall11 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 11.fSize,
      );
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallGray70004 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray70004,
        fontSize: 12.fSize,
      );
  static get bodySmallIndigoA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.indigoA700,
      );
  static get bodySmallIndigoA70001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.indigoA70001,
      );
  static get bodySmallIndigoA70005 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.indigoA70005,
      );
  static get bodySmallInriaSans =>
      theme.textTheme.bodySmall!.inriaSans.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallInriaSansGray80001 =>
      theme.textTheme.bodySmall!.inriaSans.copyWith(
        color: appTheme.gray80001,
        fontSize: 11.fSize,
      );
  static get bodySmallInriaSansGray900 =>
      theme.textTheme.bodySmall!.inriaSans.copyWith(
        color: appTheme.gray900,
        fontSize: 10.fSize,
      );
  static get bodySmallInriaSansIndigo500 =>
      theme.textTheme.bodySmall!.inriaSans.copyWith(
        color: appTheme.indigo500,
        fontSize: 12.fSize,
      );
  static get bodySmallInriaSansTeal700 =>
      theme.textTheme.bodySmall!.inriaSans.copyWith(
        color: appTheme.teal700,
        fontSize: 12.fSize,
      );
  static get bodySmallRed600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.red600,
        fontSize: 12.fSize,
      );
  // Headline text style
  static get headlineLargeErrorContainer =>
      theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(0.46),
      );
  static get headlineLarge_1 => theme.textTheme.headlineLarge!;
  // Label text style
  static get labelMediumBluegray100 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueGray100,
      );
  // Title text style
  static get titleLargeBrawlerErrorContainer =>
      theme.textTheme.titleLarge!.brawler.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
        fontSize: 22.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeIndigoA70004 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.indigoA70004,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w300,
      );
  static get titleLargeInterErrorContainer =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get titleLargeInterWhiteA70002 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.whiteA70002,
      );
  static get titleLargePurple900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.purple900,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 17.fSize,
      );
  static get titleMediumDeeppurple900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.deepPurple900,
      );
  static get titleMediumInriaSansPurple900 =>
      theme.textTheme.titleMedium!.inriaSans.copyWith(
        color: appTheme.purple900,
        fontSize: 18.fSize,
      );
  static get titleMediumWhiteA70002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA70002,
      );
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get bonheurRoyale {
    return copyWith(
      fontFamily: 'Bonheur Royale',
    );
  }

  TextStyle get brawler {
    return copyWith(
      fontFamily: 'Brawler',
    );
  }

  TextStyle get inriaSans {
    return copyWith(
      fontFamily: 'Inria Sans',
    );
  }
}
