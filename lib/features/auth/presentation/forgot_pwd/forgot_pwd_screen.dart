import 'package:app/shared/widgets/custom_button.dart';
import 'package:app/shared/widgets/custom_circle_btn.dart';
import 'package:app/shared/widgets/custom_text_field_widget.dart';
import 'package:app/core/utils/common_lib.dart';
import 'package:app/core/theme/colors.dart';
import 'package:flutter/services.dart';

class ScreenForgotPwd extends StatefulWidget {
  const ScreenForgotPwd({super.key});

  @override
  State<ScreenForgotPwd> createState() => _ScreenForgotPwdState();
}

class _ScreenForgotPwdState extends State<ScreenForgotPwd> {
  bool otpSended = false;
  @override
  Widget build(BuildContext context) {
    final inset = $style.insets;
    return Scaffold(
      backgroundColor: AppColors.kSecondary,
      appBar: AppBar(
        backgroundColor: AppColors.kSecondary,
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: CustomCircleBtn(
          disableBorder: true,
          bgColor: AppColors.kSecondary,
          iconColor: context.theme.kPrimaryGoldLight,
          onTap: () {
            context.pop();
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: inset.sm * 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Gap(inset.customSize(150)),
            CustomText(
              txt: 'Forgot Password',
              fontSize: 24,
              color: context.theme.kPrimaryGold,
            ),

            Gap(inset.lg),
            CustomTextFieldWidget(
              label: 'Email Address',
              hint: 'Registered email address',
              labelColor: context.theme.kPrimaryGold,
              borderColor: AppColors.kSecondaryLight,
              txtColor: AppColors.kGoldLight,
            ),
            Gap(inset.xs),
            if (otpSended)
              CustomTextFieldWidget(
                label: 'OTP',
                type: TextInputType.number,
                labelColor: context.theme.kPrimaryGold,
                borderColor: AppColors.kSecondaryLight,
                txtColor: AppColors.kGoldLight,
                suffix: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.refresh,
                    color: context.theme.kPrimaryGold,
                  ),
                ),
                inputFormatters: [LengthLimitingTextInputFormatter(5)],
              ),
            Gap(inset.sm),
            if (otpSended)
              Center(
                child: CustomTextButton(
                  txt: 'Resend OTP?',
                  fontWeight: FontWeight.normal,
                  fontSize: 16,

                  color: context.theme.kPrimaryGoldLight,
                  onTap: () {},
                ),
              ),
            Gap(inset.sm),
            CustomButton(
              text: otpSended ? "Verify OTP" : 'Submit',
              bgColor: AppColors.kSecondaryLight,
              textColor: AppColors.kGold,

              onTap: () async {
                if (otpSended) {
                  context.push(ScreenPath.forgotNewPwd);
                  return;
                }
                await Future.delayed(const Duration(seconds: 1));
                otpSended = true;
                setState(() {});
              },
            ),
            Gap(inset.md),
            Center(
              child: CustomTextButton(
                txt: 'Already have an account? Login',
                fontWeight: FontWeight.normal,
                fontSize: 16,

                color: AppColors.kGoldLight,
                onTap: () {
                  context.push(ScreenPath.login);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
