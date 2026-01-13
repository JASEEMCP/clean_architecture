import 'package:app/resource/utils/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:app/presentation/widget/helper_widget.dart';
import 'package:flutter/services.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    this.bgColor,
    this.textColor,
    this.width,
    this.isLoading, this.height,
  });
  final String text;
  final Function() onTap;
  final Color? bgColor;
  final Color? textColor;
  final double? width;
   final double? height;
  final bool? isLoading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.maxFinite,
      height: height,
      child: CupertinoButton(
        color: bgColor ?? context.theme.kBlack,
        padding: EdgeInsets.zero,
        onPressed: isLoading ?? false
            ? null
            : () {
                HapticFeedback.mediumImpact();
                onTap();
              },
        child: CustomText(
          txt: text,
          color: textColor ?? context.theme.kWhite,
        ),
      ),
    );
  }
}
