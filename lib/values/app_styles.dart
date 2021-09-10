import 'dart:ui';

import 'package:find_university/values/app_colors.dart';
import 'package:find_university/values/app_fonts.dart';
import 'package:flutter/cupertino.dart';

class AppStyle {
  static const TextStyle appBarTitle = TextStyle(
    color: AppColors.appBarTitle,
    fontFamily: AppFonts.montserrat,
    fontWeight: FontWeight.bold,
    fontSize: 18,
    letterSpacing: 0.7,
  );

  static const TextStyle textNormal = TextStyle(
    color: AppColors.appBarTitle,
    fontFamily: AppFonts.montserrat,
    fontSize: 16,
    letterSpacing: 0.5,
    fontWeight: FontWeight.w600,
  );
}
