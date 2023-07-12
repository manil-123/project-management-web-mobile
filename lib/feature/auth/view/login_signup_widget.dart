import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:project_management_web_and_mobile/app/routing/app_router.gr.dart';
import 'package:project_management_web_and_mobile/app/theme/text_styles.dart';
import 'package:project_management_web_and_mobile/app/widgets/custom_text_form_field.dart';
import 'package:project_management_web_and_mobile/utils/extensions/padding_extension.dart';

class LoginSignUpWidget extends StatefulWidget {
  const LoginSignUpWidget({super.key});

  @override
  State<LoginSignUpWidget> createState() => _LoginSignUpWidgetState();
}

class _LoginSignUpWidgetState extends State<LoginSignUpWidget> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _isLogin = true;
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Hey, hello',
                style: AppTextStyle.boldText20,
              ),
              TextSpan(
                text: ' 👋',
                style: AppTextStyle.boldText20.copyWith(
                  color: const Color(0xFFFFD04E),
                ),
              ),
            ],
          ),
        ).pB(10),
        Text(
          _isLogin
              ? 'Enter the information you entered while registering.'
              : 'Enter the information for registration.',
          style: AppTextStyle.regularText12.copyWith(
            color: Colors.black.withOpacity(0.5),
          ),
        ).pB(40),
        Text(
          'Email',
          style: AppTextStyle.boldText16,
        ),
        CustomTextFormField(
          controller: _emailController,
          prefixIcon: Icons.person,
          keyboardType: TextInputType.emailAddress,
        ).pB(20),
        Text(
          'Password',
          style: AppTextStyle.boldText16,
        ),
        CustomTextFormField(
          controller: _passwordController,
          prefixIcon: Icons.lock,
          keyboardType: TextInputType.visiblePassword,
          obsecure: !_isPasswordVisible,
          suffixIcon:
              _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
          onSufficIconPress: () {
            setState(() {
              _isPasswordVisible = !_isPasswordVisible;
            });
          },
        ).pB(30),
        InkWell(
          onTap: () {
            // Login or sign up with api later on
            context.router.push(
              const ProjectListRoute(),
            );
          },
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xFF5DA4FA),
                  Color(0xFF6072FA),
                  Color(0xFF9184FB),
                ],
              ),
            ),
            child: Center(
              child: Text(
                _isLogin ? 'Login' : 'Sign Up',
                style: AppTextStyle.semiBoldText14.copyWith(
                  color: Colors.white,
                ),
              ).pY(10),
            ),
          ),
        ).pB(30),
        Center(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: _isLogin
                      ? 'Don\'t have account?'
                      : 'Already have account?',
                  style: AppTextStyle.semiBoldText12.copyWith(
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
                TextSpan(
                  text: _isLogin ? ' Sign Up' : ' Login',
                  style: AppTextStyle.semiBoldText12,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      setState(() {
                        _isLogin = !_isLogin;
                      });
                    },
                ),
              ],
            ),
          ).pB(10),
        ),
      ],
    ).pXY(60, 30);
  }
}
