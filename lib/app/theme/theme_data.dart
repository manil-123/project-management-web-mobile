import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project_management_web_and_mobile/app/constants/app_colors.dart';
import 'package:project_management_web_and_mobile/app/theme/text_styles.dart';
import 'package:project_management_web_and_mobile/utils/custom_class/no_transition_builder.dart';

ThemeData get appTheme => ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.kWebLightColor,
        iconTheme: const IconThemeData(color: Colors.white),
        titleTextStyle: AppTextStyle.boldText14.copyWith(
          color: Colors.white,
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
