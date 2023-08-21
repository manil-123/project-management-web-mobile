import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project_management_web_and_mobile/app/constants/app_colors.dart';
import 'package:project_management_web_and_mobile/app/theme/text_styles.dart';
import 'package:project_management_web_and_mobile/utils/custom_class/no_transition_builder.dart';

ThemeData get appTheme => ThemeData(
      // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.kWebLightColor,
        iconTheme: const IconThemeData(color: Colors.white),
        titleTextStyle: AppTextStyle.boldText14.copyWith(
          color: Colors.white,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.kWebDarkColor,
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
          elevation: 0,
          textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.0),
          ),
        ),
      ),
      useMaterial3: true,
      pageTransitionsTheme: PageTransitionsTheme(
        builders: kIsWeb
            ? {
                for (final platform in TargetPlatform.values)
                  platform: const NoTransitionsBuilder(),
              }
            : {
                TargetPlatform.iOS: const CupertinoPageTransitionsBuilder(),
                TargetPlatform.android: const ZoomPageTransitionsBuilder(),
              },
      ),
    );
