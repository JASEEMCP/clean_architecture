import 'package:spa/presentation/widget/helper_widget.dart';
import 'package:spa/resource/utils/common_lib.dart';

class ReviewTileWidget extends StatelessWidget {
  const ReviewTileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final inset = $style.insets;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 30,
              child: Text(
                'SS',
                style: $style.text.textSBold16,
              ),
            ),
            Gap(inset.xs),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(txt: 'Shan KK '),
                CustomText(
                  txt: 'Sat, Jan 11, 2025 at 8:15',
                  fontSize: 12,
                  color: context.theme.kBlack.withOpacity(0.4),
                ),
              ],
            )
          ],
        ),
        Gap(inset.xs),
        Row(
          children: [
            for (int i = 0; i < 5; i++)
              const Icon(
                Icons.star,
                size: 25,
              )
          ],
        ),
        const CustomText(
          fontWeight: FontWeight.w400,
          txt:
              'Very good envirmental and eco friendly location stating and ending',
        ),
      ],
    );
  }
}
