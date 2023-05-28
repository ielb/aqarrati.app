import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:core_template/app/resources/icons.dart';
import 'package:core_template/app/views/home/page.dart';
import 'package:core_template/core/utils/extensions/extensions.dart';

class NavigationPage extends StatefulWidget {
  static const name = 'navigation_page';

  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _bottomNavIndex = 0;

  final List<IconData> iconList = [
    AppIcons.home,
    AppIcons.heart,
    AppIcons.search_normal_1,
    AppIcons.message,
    AppIcons.frame_1
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: AppColors.background,
          actions: [
            Icon(
              AppIcons.notification_bold,
              color: AppColors.gray,
              size: 26,
            ).paddingOnly(right: 5)
          ],
        ),
        bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: iconList,
          activeIndex: _bottomNavIndex,

          gapLocation: GapLocation.none,
          activeColor: AppColors.primary,
          iconSize: 26,
          inactiveColor: AppColors.black,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          onTap: (index) => setState(() => _bottomNavIndex = index),
          //other params
        ),
        body: HomePage());
  }
}
