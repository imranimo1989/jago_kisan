
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jago_kisan/app_color.dart';
import 'package:jago_kisan/screens/expert_in_details_screen.dart';
import 'package:jago_kisan/screens/farmers_directory_screen.dart';
import 'package:jago_kisan/screens/farming_details_screen.dart';
import 'package:jago_kisan/screens/home_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'screens/create_account_screen.dart';
import 'screens/login_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {

  final PersistentTabController _controller = PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [
      const HomeScreen(),
      const FarmerDirectoryScreen(),
      const ExpertInDetailsScreen(),

    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.home),
        title: ("Home"),
        activeColorPrimary: AppColors.primaryColorDeep,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.search),
        title: ("Search"),
        activeColorPrimary: AppColors.primaryColorDeep,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.person),
        title: ("Farmers"),
        activeColorPrimary: AppColors.primaryColorDeep,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:Padding(
        padding: const EdgeInsets.all(16.0),
        child: PersistentTabView(
          context,
          controller: _controller,
          screens: _buildScreens(),
          items: _navBarsItems(),
          confineInSafeArea: true,
          backgroundColor: Colors.white, // Default is Colors.white.
          handleAndroidBackButtonPress: true, // Default is true.
          resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
          stateManagement: true, // Default is true.
          hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
          decoration: NavBarDecoration(
            boxShadow: [const BoxShadow(
              color: Colors.grey, // Shadow color
              offset: Offset(0, 2), // Offset (x, y)
              blurRadius: 5.0, // Shadow blur radius
              spreadRadius: 1.0, // Shadow spread radius

            )],
            borderRadius: BorderRadius.circular(40.0),
            colorBehindNavBar: Colors.white,
          ),
          popAllScreensOnTapOfSelectedTab: true,
          popActionScreens: PopActionScreensType.all,
          itemAnimationProperties: const ItemAnimationProperties( // Navigation Bar's items animation properties.
            duration: Duration(milliseconds: 200),
            curve: Curves.ease,
          ),
          screenTransitionAnimation: const ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
            animateTabTransition: true,
            curve: Curves.ease,
            duration: Duration(milliseconds: 200),
          ),
          navBarStyle: NavBarStyle.style1, // Choose the nav bar style with this property.
        ),
      )
    );
  }
}

