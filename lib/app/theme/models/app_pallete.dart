import 'dart:ui';

import 'package:flutter/material.dart';

/// Цветовая палитра приложения
///
/// Это фиксация договоренностей с UX командой по использованию цветов в приложении
/// Такой подход хорошо зарекомендовал себя, т к как правило цвета, применяемые в приложении оговариваются
/// на этапе UX прототипирования, и потом почти не меняются
class AppPallete {
  static const greyC1 = Color(0xffC1C1C1);

  static const blue157 = Color(0xff157EFB);
  static const white = Colors.white;

  static const greyF7 = Color(0xffF7F7F7);
  static const blue1 = Color(0xff2D81FF);
  static const blue2 = Color(0xff0066FF);
  static const greenWhite =
      Color.fromRGBO(0, 215, 0, 0.15); // rgba(0, 215, 0, 0.15)
  static const green = Color(0xff00A900);
  static const orange1 = Color(0xffFF4B31);
  static const orange2 = Color(0xffFF6B00);
  static const error = Color(0xffEF0000);
  static const red4811 = Color(0xffF74811);
  static const grey = Color(0xff979797);
  static const greyE6 = Color(0xffE6E6E6);

  static const greyBorder = Color(0xffE9E9E9);
  static const greyBackground = Color(0xffF9F9F9);
  static const backgroundPage = Color(0xffE5E5E5);
  static const black = Colors.black;
  static const transparent = Colors.transparent;
}
