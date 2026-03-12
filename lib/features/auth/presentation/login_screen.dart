import 'package:app/features/auth/application/login_cubit/login_cubit.dart';
import 'package:app/core/network/failure/api_failure.dart';
import 'package:app/shared/widgets/custom_button.dart';
import 'package:app/shared/widgets/custom_text_field_widget.dart';
import 'package:app/core/utils/common_lib.dart';
import 'package:app/core/theme/colors.dart';
import 'package:flutter/services.dart';

class ScreenLogin extends StatelessWidget {
  ScreenLogin({
    super.key,
  });
  final List<TextEditingController> controller = List.generate(
    2,
    (_) => generateTextController(),
  );

  final ValueNotifier _visibilityNotifier = ValueNotifier(true);

  final _formKey = generateFormKey();

  @override
  Widget build(BuildContext context) {
    final inset = $style.insets;
    return Scaffold(
      backgroundColor: AppColors.kSecondary,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: inset.sm * 2),
        child: Form(
          key: _formKey,
          child: AutofillGroup(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(inset.customSize(170)),
                Center(
                  child: Image.asset(
                    'assets/store/app_icon_ios.png',
                    height: inset.customSize(150),
                  ),
                ),
                Center(
                  child: CustomText(
                    txt: 'Login',
                    fontSize: 24,
                    color: context.theme.kPrimaryGold,
                  ),
                ),
                // Gap(inset.xs),
                // Center(
                //   child: CustomText(
                //     txt:
                //         'Welcome back to the app',
                //     color: context.theme.kPrimaryGoldLight,
                //     textAlign: TextAlign.center,
                //   ),
                // ),
                Gap(inset.sm),
                CustomTextFieldWidget(
                  label: 'Email',
                  validate: true,
                  enableSuggestions: true,
                  type: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  autofillHints: [AutofillHints.username],
                  controller: controller[0],
                  labelColor: context.theme.kPrimaryGold,
                  borderColor: AppColors.kSecondaryLight,
                  txtColor: AppColors.kGoldLight,
                ),
                Gap(inset.xs),
                ValueListenableBuilder(
                  valueListenable: _visibilityNotifier,
                  builder: (context, obscure, child) {
                    return CustomTextFieldWidget(
                      label: 'Password',

                      validate: true,
                      controller: controller[1],
                      autofillHints: [AutofillHints.password],
                      labelColor: context.theme.kPrimaryGold,
                      txtColor: AppColors.kGoldLight,
                      borderColor: AppColors.kSecondaryLight,
                      obscureText: obscure,
                      suffix: IconButton(
                        onPressed: () {
                          _visibilityNotifier.value = !obscure;
                        },
                        icon: Icon(
                          obscure
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                          color: context.theme.kPrimaryGold,
                        ),
                      ),
                    );
                  },
                ),

                Gap(inset.sm),
                BlocConsumer<LoginCubit, LoginState>(
                  listener: (context, state) {
                    state.maybeWhen(
                      orElse: () => null,
                      error: (e) => context.showCustomSnackBar(
                        e.errorDescription,
                        Colors.red,
                      ),
                      success: () => context.go(ScreenPath.home),
                    );
                  },
                  builder: (context, state) {
                    return CustomButton(
                      text: 'Login',

                      bgColor: AppColors.kSecondaryLight,
                      textColor: AppColors.kGold,

                      onTap: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          context.read<LoginCubit>().login(
                            controller[0].text,
                            controller[1].text,
                          );
                          TextInput.finishAutofillContext();
                        }
                      },
                    );
                  },
                ),
                Gap(inset.md),
                Center(
                  child: CustomTextButton(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    txt: 'Forgot Password ?',
                    color: AppColors.kGoldLight,
                    onTap: () {
                      context.push(ScreenPath.forgotPwd);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
