import 'package:app/resource/utils/common_lib.dart';

class CustomCircleBtn extends StatelessWidget {
  const CustomCircleBtn({
    super.key,
    required this.onTap,
    this.icon,
    this.radius,
    this.disableBorder,
    this.bgColor,
    this.iconColor,
  });

  final Function() onTap;
  final IconData? icon;
  final double? radius;
  final bool? disableBorder;
  final Color? bgColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: radius ?? 35,
        height: radius ?? 35,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: disableBorder ?? false
              ? null
              : Border.all(
                  color: context.theme.kBlack.withValues(alpha: 0.2),
                ),
          color: bgColor ?? context.theme.kWhite,
        ),
        child: Icon(
          icon ?? Icons.arrow_back,
          color: iconColor ?? context.theme.kBlack.withValues(alpha: 0.5),
        ),
      ),
    );
  }
}
