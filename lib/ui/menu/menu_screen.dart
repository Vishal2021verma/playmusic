import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:playmusic/ui/menu/home_screen.dart';
import 'package:playmusic/ui/menu/search_screen.dart';
import 'package:playmusic/ui/menu/setting_screen.dart';
import 'package:playmusic/utils/colors_resources.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  int _selectedIndex = 0;
  List<GButton> menuItems = [
    const GButton(
      haptic: true,
      textColor: ColorResource.textGreyColor,
      iconActiveColor: ColorResource.textGreyColor,
      iconColor: ColorResource.textGreyColor,
      icon: Icons.home_outlined,
      text: 'Home',
    ),
    const GButton(
      textColor: ColorResource.textGreyColor,
      haptic: true,
      iconActiveColor: ColorResource.textGreyColor,
      iconColor: ColorResource.textGreyColor,
      icon: Icons.search_outlined,
      text: 'Search',
    ),
    const GButton(
      textColor: ColorResource.textGreyColor,
      haptic: true,
      iconActiveColor: ColorResource.textGreyColor,
      iconColor: ColorResource.textGreyColor,
      icon: Icons.settings_outlined,
      text: 'Settings',
    ),
  ];

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SearchScreen(),
    SettingScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      // bottomSheet: Container(
      //   color: Colors.black54,
      //   height: 60,
      //   child: const Center(child: Text('Bottom Sheet')),
      // ),
      bottomNavigationBar: GNav(
        gap: 8,
        color: ColorResource.miniPlayerBackgroundColor,
        tabBackgroundColor: ColorResource.miniPlayerBackgroundColor,
        backgroundColor: ColorResource.miniPlayerBackgroundColor,
        tabs: menuItems,
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
