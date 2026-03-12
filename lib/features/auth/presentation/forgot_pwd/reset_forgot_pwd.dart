import 'package:app/shared/widgets/custom_button.dart';
import 'package:app/shared/widgets/custom_circle_btn.dart';
import 'package:app/shared/widgets/custom_text_field_widget.dart';
import 'package:app/core/utils/common_lib.dart';
import 'package:app/core/theme/colors.dart';

class ScreenResetPwd extends StatelessWidget {
  const ScreenResetPwd({super.key});

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
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: inset.sm * 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Gap(inset.customSize(150)),
            CustomText(
              txt: 'Reset Password',
              fontSize: 24,
              color: context.theme.kPrimaryGold,
            ),

            Gap(inset.lg),
            CustomTextFieldWidget(
              label: 'Password',
              hint: 'New password',
              labelColor: context.theme.kPrimaryGold,
              borderColor: AppColors.kSecondaryLight,
              txtColor: AppColors.kGoldLight,
            ),
            Gap(inset.xs),
            CustomTextFieldWidget(
              label: 'Confirm Password',
              labelColor: context.theme.kPrimaryGold,
              borderColor: AppColors.kSecondaryLight,
              txtColor: AppColors.kGoldLight,
              suffix: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.visibility_off_outlined,
                  color: context.theme.kPrimaryGold,
                ),
              ),
            ),
            Gap(inset.sm),
            CustomButton(
              text: 'Submit',
              bgColor: AppColors.kSecondaryLight,
              textColor: context.theme.kPrimaryGold,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
