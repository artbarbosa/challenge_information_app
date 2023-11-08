import 'package:design_system/consts/colors/app_colors.dart';
import 'package:flutter/material.dart';

class AppGradient {
  static const Gradient gradientBackground = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      AppColors.gradientBlue,
      AppColors.gradientGreen,
    ],
  );
}
