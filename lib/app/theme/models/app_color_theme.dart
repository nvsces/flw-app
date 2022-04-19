import 'package:flutter/material.dart';

import 'app_pallete.dart';

/// Абстракция для поставки базовых цветовых токенов в приложении
///
/// Абстракция фиксирует договоренность c UX командой по цветовым псевдонимам
/// Обратите внимание, именование отражает логическую суть применения цвета
abstract class AppColorTheme {
  //============================== Main Colors ==============================
  Brightness get brightness;

  Color get accent;

  Color get accentVariant;

  Color get onAccent;

  Color get secondaryAccent;

  Color get secondaryAccentVariant;

  Color get onSecondary;

  //============================== Typography Colors ==============================

  //============================== Divider Colors ==============================
  Color get dividerPrimary;

  //============================== Background Colors ==============================
  Color get backgroundSurface;

  Color get backgroundWindowBackground;

  Color get onSurface;

  Color get onBackground;

  //============================== Icon Colors ==============================
  Color get iconPrimary;

  Color get variantBackground;
}

/// Реализация светлой цветовой темы, связывающей цветовые псевдонимы с установленной палитрой
class LightColorTheme implements AppColorTheme {
  @override
  Brightness get brightness => Brightness.light;

  //============================== Customization color tokens ==============================
  @override
  Color get accent => AppPallete.blue157;
  @override
  Color get accentVariant => AppPallete.red4811;
  @override
  Color get onAccent => AppPallete.white;

  @override
  Color get secondaryAccent => AppPallete.blue1;
  @override
  Color get secondaryAccentVariant => AppPallete.blue2;
  @override
  Color get onSecondary => onAccent;

  //============================== Divider color tokens ==============================
  @override
  Color get dividerPrimary => AppPallete.greyE6;

  //============================== Background color tokens ==============================
  @override
  Color get backgroundSurface => AppPallete.white;
  @override
  Color get backgroundWindowBackground => AppPallete.white;
  @override
  Color get onSurface => AppPallete.greyE6;
  @override
  Color get onBackground => AppPallete.greyF7;

  //============================== Icon color tokens ==============================
  @override
  Color get iconPrimary => onBackground;

  //============================== Overlay color tokens ==============================

  const LightColorTheme() : super();

  @override
  Color get variantBackground => AppPallete.greenWhite;
}

/// Реализация темной цветовой темы, связывающей цветовые псевдонимы с установленной палитрой
class DarkRedColorTheme extends LightColorTheme {
  const DarkRedColorTheme() : super();
}
