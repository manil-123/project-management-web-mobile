import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:project_management_web_and_mobile/app/routing/app_router.gr.dart';
import 'package:project_management_web_and_mobile/app/state/generic_state.dart';
import 'package:project_management_web_and_mobile/app/theme/text_styles.dart';
import 'package:project_management_web_and_mobile/app/widgets/custom_progress_indicator.dart';
import 'package:project_management_web_and_mobile/app/widgets/custom_text_form_field.dart';
import 'package:project_management_web_and_mobile/app/widgets/message_widget.dart';
import 'package:project_management_web_and_mobile/feature/auth/model/auth_response.dart';
import 'package:project_management_web_and_mobile/feature/auth/provider/auth_provider.dart';
import 'package:project_management_web_and_mobile/providers/dependency_providers.dart';
import 'package:project_management_web_and_mobile/utils/extensions/padding_extension.dart';
import 'package:project_management_web_and_mobile/utils/extensions/shake_extension.dart';

class LoginSignUpWidget extends HookConsumerWidget {
  const LoginSignUpWidget({
    required this.formKey,
    required this.contentPadding,
    super.key,
  });

  final GlobalKey<FormState> formKey;
  final double contentPadding;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();

    final isLogin = useState<bool>(true);
    final isPasswordVisible = useState<bool>(false);
    final shakeButton = useState<bool>(false);

    final loginModel = ref.watch<GenericState<AuthResponse>>(authProvider);

    ref.listen<GenericState<AuthResponse>>(authProvider, (previous, next) {
      next.whenOrNull(
        success: (loginModel) {
          if (isLogin.value) {
            context.router.pushAndPopUntil(
              const LandingRouter(),
              predicate: (route) => false,
            );
            ref.read(loginDaoProvider).saveLoginInfo(true);
          } else {
            isLogin.value = !isLogin.value;
            emailController.clear();
            passwordController.clear();
          }
          showInfo(context, loginModel.message);
        },
        error: (message) {
          showErrorInfo(context, message);
        },
      );
    });

    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Hey, hello',
                  style: AppTextStyle.boldText20.copyWith(
                    color: Colors.black,
                  ),
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
            isLogin.value
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
            controller: emailController,
            prefixIcon: Icons.person,
            keyboardType: TextInputType.emailAddress,
            validator: (name) {
              if (name!.isEmpty) {
                return 'Username cannot be empty';
              }
              return null;
            },
          ).pB(20),
          Text(
            'Password',
            style: AppTextStyle.boldText16,
          ),
          CustomTextFormField(
            controller: passwordController,
            prefixIcon: Icons.lock,
            keyboardType: TextInputType.visiblePassword,
            obsecure: !isPasswordVisible.value,
            validator: (password) {
              if (password!.isEmpty) {
                return 'Password cannot be empty';
              }
              return null;
            },
            suffixIcon: isPasswordVisible.value
                ? Icons.visibility
                : Icons.visibility_off,
            onSufficIconPress: () {
              isPasswordVisible.value = !isPasswordVisible.value;
            },
          ).pB(30),
          InkWell(
            onTap: () {
              if (formKey.currentState!.validate()) {
                if (isLogin.value) {
                  ref.read(authProvider.notifier).login(
                        emailController.text.trim(),
                        passwordController.text.trim(),
                      );
                } else {
                  ref.read(authProvider.notifier).register(
                        emailController.text.trim(),
                        passwordController.text.trim(),
                      );
                }
              } else {
                shakeButton.value = true;
                Future.delayed(const Duration(milliseconds: 1500), () {
                  shakeButton.value = false;
                });
              }
            },
            child: shakeButton.value
                ? LoginSignUpButton(
                    loginModel: loginModel,
                    isLogin: isLogin,
                    shouldShakeButton: true,
                  ).withShakeAnimation(
                    delay: const Duration(milliseconds: 500),
                    duration: const Duration(milliseconds: 1500),
                    offset: const Offset(10.0, 0.0),
                    shakes: 14.0,
                  )
                : LoginSignUpButton(
                    loginModel: loginModel,
                    isLogin: isLogin,
                    shouldShakeButton: false,
                  ),
          ).pB(30),
          Center(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: isLogin.value
                        ? 'Don\'t have account?'
                        : 'Already have account?',
                    style: AppTextStyle.semiBoldText12.copyWith(
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                  TextSpan(
                    text: isLogin.value ? ' Sign Up' : ' Login',
                    style: AppTextStyle.semiBoldText12.copyWith(
                      color: Colors.black,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        isLogin.value = !isLogin.value;
                      },
                  ),
                ],
              ),
            ).pB(10),
          ),
        ],
      ).pXY(contentPadding, 30),
    );
  }
}

class LoginSignUpButton extends StatelessWidget {
  const LoginSignUpButton({
    super.key,
    required this.loginModel,
    required this.isLogin,
    required this.shouldShakeButton,
  });

  final GenericState<AuthResponse> loginModel;
  final ValueNotifier<bool> isLogin;
  final bool shouldShakeButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
        border: shouldShakeButton ? Border.all(color: Colors.red) : null,
        gradient: const LinearGradient(
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
        child: loginModel.maybeWhen(
          orElse: () {
            return Text(
              isLogin.value ? 'Login' : 'Sign Up',
              style: AppTextStyle.semiBoldText14.copyWith(
                color: shouldShakeButton ? Colors.red : Colors.white,
              ),
            ).pY(10);
          },
          loading: () => const CustomProgressIndicator(
            dimension: 20,
            color: Colors.white,
            strokeWidth: 3.0,
          ).pY(10),
        ),
      ),
    );
  }
}
