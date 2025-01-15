import 'package:flutter/cupertino.dart';
import 'package:spa/presentation/widget/helper_widget.dart';
import 'package:spa/resource/utils/common_lib.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    this.bgColor,
    this.textColor,
    this.width,
  });
  final String text;
  final Function() onTap;
  final Color? bgColor;
  final Color? textColor;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.maxFinite,
      child: CupertinoButton(
        color: bgColor ?? context.theme.kBlack,
        padding: EdgeInsets.zero,
        onPressed: onTap,
        child: CustomText(
          txt: text,
          color: textColor ?? context.theme.kWhite,
        ),
      ),
    );
  }
}
