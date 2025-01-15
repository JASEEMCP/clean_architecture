import 'package:spa/resource/utils/common_lib.dart';

class HorizontalBookingCard extends StatelessWidget {
  const HorizontalBookingCard({
    super.key,
    this.title,
    this.onTap,
  });
  final String? title;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final inset = $style.insets;
    final text = $style.text;
    const url =
        'https://images.pexels.com/photos/1571460/pexels-photo-1571460.jpeg?auto=compress&cs=tinysrgb&w=600';
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null)
            Padding(
              padding: EdgeInsets.only(left: inset.sm),
              child: Text(
                title!,
                style: text.textSBold14.copyWith(
                  color: context.theme.kBlack,
                ),
              ),
            ),
          Gap(inset.sm),
          SizedBox(
            height: inset.customSize(230),
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: inset.sm),
              separatorBuilder: (context, index) => Gap(inset.xs),
              shrinkWrap: true,
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return SaloonCardWidget(url: url);
              },
            ),
          ),
          Gap(inset.sm),
        ],
      ),
    );
  }
}

class SaloonCardWidget extends StatelessWidget {
  const SaloonCardWidget({
    super.key,
    required this.url,
  });

  final String url;

  @override
  Widget build(BuildContext context) {
    final inset = $style.insets;
    final text = $style.text;
    return Container(
      width: inset.customSize(210),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: 1.2,
          color: context.theme.spaDivider,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            url,
            width: double.maxFinite,
            height: inset.customSize(130),
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(inset.xs),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lyra Salon, Calicut',
                  maxLines: 1,
                  style: text.textBold12.copyWith(
                    color: context.theme.kBlack,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  'No rating yet',
                  maxLines: 1,
                  style: text.textSBold10.copyWith(
                    color: context.theme.spaDivider,
                    height: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  'Calicut, Kozhikode',
                  maxLines: 1,
                  style: text.textSBold10.copyWith(
                    color: context.theme.spaDivider,
                    height: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(
                      side: BorderSide(
                        width: 1,
                        color: context.theme.spaDivider,
                      ),
                    ),
                  ),
                  child: Text(
                    'Message',
                    maxLines: 1,
                    style: text.textSBold10.copyWith(
                      color: context.theme.kBlack,
                      height: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
