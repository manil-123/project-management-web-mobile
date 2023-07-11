import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:project_management_web_and_mobile/app/routing/app_router.gr.dart';
import 'package:project_management_web_and_mobile/app/theme/text_styles.dart';
import 'package:project_management_web_and_mobile/app/widgets/custom_text_form_field.dart';
import 'package:project_management_web_and_mobile/utils/extensions/padding_extension.dart';

class LoginSignUpWidget extends HookConsumerWidget {
  LoginSignUpWidget({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _emailController = useTextEditingController();
    final _passwordController = useTextEditingController();

    final _isLogin = useState<bool>(true);
    final _isPasswordVisible = useState<bool>(true);

    return Form(
      key: _formKey,
      child: Column(
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
            _isLogin.value
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
            obsecure: !_isPasswordVisible.value,
            suffixIcon: _isPasswordVisible.value
                ? Icons.visibility
                : Icons.visibility_off,
            onSufficIconPress: () {
              _isPasswordVisible.value = !_isPasswordVisible.value;
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
                  _isLogin.value ? 'Login' : 'Sign Up',
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
                    text: _isLogin.value
                        ? 'Don\'t have account?'
                        : 'Already have account?',
                    style: AppTextStyle.semiBoldText12.copyWith(
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                  TextSpan(
                    text: _isLogin.value ? ' Sign Up' : ' Login',
                    style: AppTextStyle.semiBoldText12,
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        _isLogin.value = !_isLogin.value;
                      },
                  ),
                ],
              ),
            ).pB(10),
          ),
        ],
      ).pXY(60, 30),
    );
  }
}
