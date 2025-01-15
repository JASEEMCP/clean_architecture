
import 'package:spa/presentation/widget/helper_widget.dart';
import 'package:spa/resource/utils/common_lib.dart';

class TeamMemberCircleWidget extends StatelessWidget {
  const TeamMemberCircleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final inset = $style.insets;
    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: 50,
              child: Text(
                'S#',
                style: $style.text.textSBold26.copyWith(),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: -5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: inset.xxs),
                    decoration: ShapeDecoration(
                      color: context.theme.kWhite,
                      shape: StadiumBorder(
                        side: BorderSide(
                          color: context.theme.kBlack.withOpacity(0.2),
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(
                          '4.7',
                          style: $style.text.textBold12.copyWith(),
                        ),
                        const Icon(
                          Icons.star,
                          size: 18,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        Gap(inset.xs),
        const CustomText(
          txt: 'Shan (Male)',
        ),
        CustomText(
          txt: 'Male Therapist',
          fontSize: 12,
          color: context.theme.kBlack.withOpacity(0.4),
        ),
      ],
    );
  }
}
