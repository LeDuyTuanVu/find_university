import 'dart:ui';

import 'package:find_university/values/app_colors.dart';
import 'package:find_university/values/app_fonts.dart';
import 'package:flutter/cupertino.dart';

class AppStyle {
  static const TextStyle titleAppBar = TextStyle(
    color: AppColors.black87,
    fontFamily: AppFonts.montserrat,
    fontWeight: FontWeight.bold,
    fontSize: 18,
    letterSpacing: 0.7,
  );

  static const TextStyle h1 = TextStyle(
    fontFamily: AppFonts.montserrat,
    fontSize: 17,
  );

  static const TextStyle h2 = TextStyle(
    fontFamily: AppFonts.montserrat,
    fontSize: 16,
  );

  static const h2Bold = TextStyle(
    fontFamily: AppFonts.montserrat,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static const h3 = TextStyle(
    fontFamily: AppFonts.montserrat,
    fontSize: 15,
  );

  static const h4 = TextStyle(
    fontFamily: AppFonts.montserrat,
    fontSize: 14,
  );

  static const h5 = TextStyle(
    fontFamily: AppFonts.montserrat,
    fontSize: 13,
  );
}
