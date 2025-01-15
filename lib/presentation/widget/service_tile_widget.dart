import 'package:spa/presentation/widget/custom_stadium_btn.dart';
import 'package:spa/presentation/widget/helper_widget.dart';
import 'package:spa/resource/utils/common_lib.dart';

enum ButtonType { stadium, square }

class ServiceTileWidget extends StatelessWidget {
  const ServiceTileWidget({
    super.key, required this.type,
  });

  final ButtonType type;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomText(
              txt: 'Swedish Message',
            ),
            CustomText(
              txt: '1 hr - 1 hr, 30 min',
              color: context.theme.kBlack.withOpacity(0.4),
            ),
            CustomText(
              txt: '1 hr - 1 hr, 30 min',
              fontSize: 12,
              color: context.theme.kBlack.withOpacity(0.4),
            ),
          ],
        ),
        if(type == ButtonType.square)
        Container(
          height: 28,
          width: 28,
          decoration: BoxDecoration(
            color: context.theme.kBlack.withOpacity(0.2),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Icon(Icons.add),
        ),
        if(type == ButtonType.stadium)
        CustomStadiumBtn(
          text: 'Book',
          enableBorder: true,
          bgColor: context.theme.kWhite,
          txtColor: context.theme.kBlack.withOpacity(0.4),
        ),
      ],
    );
  }
}
