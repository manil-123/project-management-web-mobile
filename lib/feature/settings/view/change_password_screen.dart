import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:project_management_web_and_mobile/app/theme/text_styles.dart';
import 'package:project_management_web_and_mobile/app/widgets/custom_app_bar.dart';
import 'package:project_management_web_and_mobile/app/widgets/custom_text_form_field.dart';
import 'package:project_management_web_and_mobile/utils/extensions/padding_extension.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ChangePasswordScreen extends HookConsumerWidget {
  ChangePasswordScreen({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final oldPasswordController = useTextEditingController();
    final newPasswordController = useTextEditingController();

    final isOldPasswordVisible = useState<bool>(false);
    final isNewPasswordVisible = useState<bool>(false);

    var deviceType = getDeviceType(MediaQuery.sizeOf(context));

    return Scaffold(
      appBar: const CustomAppBar(),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: deviceType == DeviceScreenType.desktop
                ? MediaQuery.sizeOf(context).width * .5
                : MediaQuery.sizeOf(context).width * .8,
          ),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Old Password',
                    style: AppTextStyle.boldText16,
                  ).pB(8),
                  CustomTextFormField(
                    controller: oldPasswordController,
                    prefixIcon: Icons.lock,
                    keyboardType: TextInputType.visiblePassword,
                    obsecure: !isOldPasswordVisible.value,
                    validator: (password) {
                      if (password!.isEmpty) {
                        return 'Old password cannot be empty';
                      }
                      return null;
                    },
                    suffixIcon: isOldPasswordVisible.value
                        ? Icons.visibility
                        : Icons.visibility_off,
                    onSufficIconPress: () {
                      isOldPasswordVisible.value = !isOldPasswordVisible.value;
                    },
                  ).pB(40),
                  Text(
                    'New Password',
                    style: AppTextStyle.boldText16,
                  ).pB(8),
                  CustomTextFormField(
                    controller: newPasswordController,
                    prefixIcon: Icons.lock,
                    keyboardType: TextInputType.visiblePassword,
                    obsecure: !isNewPasswordVisible.value,
                    validator: (password) {
                      if (password!.isEmpty) {
                        return 'New password cannot be empty';
                      }
                      return null;
                    },
                    suffixIcon: isNewPasswordVisible.value
                        ? Icons.visibility
                        : Icons.visibility_off,
                    onSufficIconPress: () {
                      isNewPasswordVisible.value = !isNewPasswordVisible.value;
                    },
                  ).pB(20),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Change Password',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
