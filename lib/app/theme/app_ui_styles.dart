import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'models/app_pallete.dart';

abstract class AppUiStyles {
  static final interNormal = GoogleFonts.inter(
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );

  static final title = GoogleFonts.inter(
    fontSize: 32.0,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    color: AppPallete.blue1,
  );

  static final button = GoogleFonts.inter(
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
  );

  static final smallUnderlined = GoogleFonts.inter(
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    decoration: TextDecoration.underline,
    color: AppPallete.grey,
  );

  static final inputHint = GoogleFonts.sourceSerifPro(
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    color: AppPallete.grey,
  );

  static final inputText = GoogleFonts.sourceSerifPro(
    fontSize: 16.0,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    color: AppPallete.black,
  );

  static final textButton = GoogleFonts.inter(
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    decoration: TextDecoration.underline,
    color: AppPallete.black,
  );

  static final textMedium = GoogleFonts.inter(
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    color: AppPallete.black,
  );

  static final tabsItemTextStyle = GoogleFonts.inter(
    fontSize: 14.0,
    fontWeight: FontWeight.w800,
    fontStyle: FontStyle.normal,
    color: AppPallete.black,
  );

  static final titleAppBar = GoogleFonts.manrope(
    fontSize: 24.0,
    fontWeight: FontWeight.w800,
    fontStyle: FontStyle.normal,
  );

  static final infoCardText = GoogleFonts.sourceSerifPro(
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    color: AppPallete.green,
  );
}
