import 'package:app/core/utils/common_lib.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

ValueNotifier<int> tabChangeNotifier = ValueNotifier<int>(0);
ValueNotifier<bool> hideNavBarNotifier = ValueNotifier(false);
final ScrollController scrollController = ScrollController();

class ScreenMain extends StatefulWidget {
  const ScreenMain({super.key, required this.child});

  final Widget child;

  @override
  State<ScreenMain> createState() => _ScreenMainState();
}

class _ScreenMainState extends State<ScreenMain> {
  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      final direction = scrollController.position.userScrollDirection;

      if (direction == ScrollDirection.reverse) {
        hideNavBarNotifier.value = true;
      } else if (direction == ScrollDirection.forward) {
        hideNavBarNotifier.value = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // final inset = $style.insets;
    final userType = pref.token.value.userType;
    return ValueListenableBuilder(
      valueListenable: tabChangeNotifier,
      builder: (context, currentIndex, child) {
        return ValueListenableBuilder(
          valueListenable: hideNavBarNotifier,
          builder: (context, hide, child) {
            return _buildNavBar(userType, currentIndex);
          },
        );
      },
    );
  }

  void _onTabChange(int value, BuildContext context) {
    if (value == 0) {
      context.go(ScreenPath.home);
    } else if (value == 1) {
      context.go(ScreenPath.events);
    } else if (value == 2) {
      context.go(ScreenPath.transaction);
    } else if (value == 3) {
      context.go(ScreenPath.addUser);
    } else if (value == 4) {
      context.go(ScreenPath.report);
    }
    tabChangeNotifier.value = value;
  }

  // For Android Bottom Navigation Bar
  BottomNavigationBar _buildNavBar(String? userType, int currentIndex) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      backgroundColor: context.theme.kSecondary,
      currentIndex: currentIndex,
      selectedItemColor: context.theme.kPrimaryGold,
      unselectedItemColor: context.theme.kBlack.withValues(alpha: 0.5),
      onTap: (value) {
        _onTabChange(value, context);
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.star_circle),
          activeIcon: Icon(CupertinoIcons.star_circle_fill),
          label: 'Top Chart',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.calendar_circle),
          activeIcon: Icon(CupertinoIcons.calendar_circle_fill),
          label: 'Event',
        ),

        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.arrow_left_right_square),
          activeIcon: Icon(CupertinoIcons.arrow_left_right_square_fill),
          label: ((userType == 'admin')) ? "Payment" : 'Transaction',
        ),
        if ((userType == 'admin'))
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_crop_circle_badge_plus),
            activeIcon: Icon(
              CupertinoIcons.person_crop_circle_fill_badge_plus,
            ),
            label: 'Add',
          ),
        if ((userType == 'admin'))
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.doc_circle),
            activeIcon: Icon(CupertinoIcons.doc_circle_fill),
            label: 'Report',
          ),
      ],
    );
  }
}
