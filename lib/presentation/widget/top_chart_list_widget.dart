import 'package:app/resource/utils/common_lib.dart';

class TopChartListWidget extends StatelessWidget {
  TopChartListWidget({super.key});

  // Dummy leaderboard data
  final leaderboard = [
    {"name": "John Doe", "events": 25, "rating": 4.8, "points": 250},
    {"name": "Alice Smith", "events": 22, "rating": 4.5, "points": 220},
    {"name": "Michael Lee", "events": 20, "rating": 4.3, "points": 200},
    {"name": "Sophia Brown", "events": 18, "rating": 4.0, "points": 180},
    {"name": "David Clark", "events": 15, "rating": 3.9, "points": 150},
  ];

  @override
  Widget build(BuildContext context) {
    final inset = $style.insets;
    // Current user (assume index 2 for demo)
    final currentUserIndex = 2;
    final currentUser = leaderboard[currentUserIndex];
    return Column(
      children: [
        /// --- Current User Highlight Card ---
        Container(
          padding: EdgeInsets.all(inset.sm),
          decoration: BoxDecoration(
            color: context.theme.kWhite,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: context.theme.shadowGreyToYellowSwitcher(),
                blurRadius: 10,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: Column(
            children: [
              Row(
                spacing: inset.sm,
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: context.theme.kBlack.withValues(
                      alpha: 0.1,
                    ),
                    child: CustomText(
                      txt: "#${currentUserIndex + 1}",
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                      fontSize: 22,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        txt: "Jaseem (You)",
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: context.theme.kSecondaryLight,
                      ),
                      Gap(inset.xs),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            txt: "Events: ${currentUser["events"]}",
                            fontSize: 14,
                            color: context.theme.kSecondary,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Divider(
                height: inset.lg,
                color: context.theme.kBlack.withValues(alpha: 0.1),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildIconText(
                    context,
                    icon: Icons.add_reaction,
                    color: Colors.green,
                    txt: 'Points: ${currentUser["points"]}',
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 18,
                      ),
                      CustomText(
                        txt: currentUser["rating"].toString(),
                        fontSize: 12,
                        color: context.theme.kSecondary,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),

        Divider(
          color: context.theme.kBlack.withValues(alpha: 0.1),
          height: inset.lg,
        ),

        /// --- Leaderboard List ---
        ListView.builder(
          itemCount: leaderboard.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final user = leaderboard[index];
            return Container(
              margin: EdgeInsets.only(bottom: inset.sm),
              padding: EdgeInsets.all(inset.sm),
              decoration: BoxDecoration(
                color: context.theme.kWhite,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: context.theme.shadowGreyToYellowSwitcher(),
                    blurRadius: 8,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: context.theme.kBlack.withValues(
                          alpha: 0.1,
                        ),
                        child: CustomText(
                          txt: "#${index + 1}",
                          fontWeight: FontWeight.bold,
                          color: index == currentUserIndex
                              ? Colors.deepOrange
                              : context.theme.kSecondary,
                          fontSize: 14,
                        ),
                      ),
                      Gap(inset.sm),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              txt: "${user["name"]}",
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: context.theme.kSecondaryLight,
                            ),
                            CustomText(
                              txt: "Events: ${user["events"]}",
                              fontSize: 12,
                              color: context.theme.kSecondary,
                            ),
                          ],
                        ),
                      ),

                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 18,
                          ),
                          CustomText(
                            txt: user["rating"].toString(),
                            fontSize: 12,
                            color: context.theme.kSecondary,
                          ),
                        ],
                      ),
                      Divider(
                        height: inset.lg,
                        color: context.theme.kBlack.withValues(
                          alpha: 0.1,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: inset.lg,
                    color: context.theme.kBlack.withValues(alpha: 0.1),
                  ),

                  _buildIconText(
                    context,
                    icon: Icons.add_reaction,
                    color: Colors.green,
                    txt: 'Points: ${user["points"]}',
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  Row _buildIconText(
    BuildContext context, {
    required IconData icon,
    required String txt,
    Color? color,
    Color? txtColor,
  }) {
    final inset = $style.insets;
    return Row(
      spacing: inset.xs,
      children: [
        Icon(
          icon,
          color: color ?? context.theme.kSecondaryLight,
          size: 20,
        ),
        CustomText(
          txt: txt,
          color: txtColor ?? context.theme.kSecondary,
          fontSize: 12,
        ),
      ],
    );
  }
}
