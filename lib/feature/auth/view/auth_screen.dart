import 'package:flutter/material.dart';
import 'package:project_management_web_and_mobile/app/theme/text_styles.dart';
import 'package:project_management_web_and_mobile/feature/auth/view/login_signup_widget.dart';
import 'package:project_management_web_and_mobile/utils/extensions/padding_extension.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF5F9FF),
        body: ScreenTypeLayout.builder(
          mobile: (context) => ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.sizeOf(context).width,
              maxHeight: MediaQuery.sizeOf(context).height,
              minHeight: MediaQuery.sizeOf(context).height * 0.8,
              minWidth: MediaQuery.sizeOf(context).width * 0.8,
            ),
            child: Center(
              child: Container(
                height: MediaQuery.sizeOf(context).height * 0.8,
                width: MediaQuery.sizeOf(context).width * 0.8,
                color: Colors.white,
                child: const LoginSignUpWidget(),
              ),
            ),
          ),
          desktop: (context) => Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.sizeOf(context).width * 0.8,
                  maxHeight: MediaQuery.sizeOf(context).height * 0.8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: double.infinity,
                    width: MediaQuery.sizeOf(context).width * 0.4,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        stops: [0, 0.3, 0.7, 1],
                        colors: [
                          Color(0xFFD7C5FA),
                          Color(0xFFC6D9FC),
                          Color(0xFFC2D5FC),
                          Color(0xFFAFC3F6),
                        ],
                      ),
                    ),
                    child: Center(
                      child: Container(
                        height: MediaQuery.sizeOf(context).height * 0.8 * 0.6,
                        width: MediaQuery.sizeOf(context).width * 0.4 * 0.7,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFFCBD9FC),
                            width: 2,
                          ),
                          gradient: const LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            stops: [0, 0.3, 0.7, 1],
                            colors: [
                              Color(0xFFDFE5F8),
                              Color(0xFFC7D2FD),
                              Color(0xFFB3C8FE),
                              Color(0xFFBACBFA),
                            ],
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "MANIL INC.",
                              style: AppTextStyle.boldText20.copyWith(
                                color: Colors.white,
                                fontSize: 40,
                              ),
                            ),
                            Text(
                              "Get the best app from our chutiya developer Tek.",
                              style: AppTextStyle.semiBoldText16,
                            ),
                          ],
                        ).pXY(20, 20),
                      ),
                    ),
                  ),
                  Container(
                    height: double.infinity,
                    width: MediaQuery.sizeOf(context).width * 0.4,
                    color: Colors.white,
                    child: const LoginSignUpWidget(),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
