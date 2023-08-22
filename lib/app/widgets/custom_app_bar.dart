import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:project_management_web_and_mobile/utils/extensions/padding_extension.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize, // Set this height
      child: Align(
        alignment: Alignment.topLeft,
        child: InkWell(
          onTap: () => context.router.pop(),
          child: const Icon(
            Icons.arrow_back,
          ).pXY(20, 20),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
