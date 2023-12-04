import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:playmusic/ui/menu/explore_screen.dart';
import 'package:playmusic/ui/menu/home_screen.dart';
import 'package:playmusic/ui/menu/setting_screen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  int _selectedIndex = 0;
  List<GButton> menuItems = [
    const GButton(
      icon: Icons.home,
      text: 'Home',
    ),
    const GButton(
      icon: Icons.compass_calibration_sharp,
      text: 'Explore',
    ),
    const GButton(
      icon: Icons.settings,
      text: 'Settings',
    ),
  ];
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ExploreScreen(),
    SettingScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: GNav(
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
