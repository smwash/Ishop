import 'package:flutter/material.dart';
import 'package:ishop/screens/hmpgScreens/hm_page.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'screens/explore_scrn.dart';
import 'screens/notifications_scrn.dart';
import 'screens/orders_scrn.dart';
import 'screens/settings_scrn.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int index = 0;

  List<Widget> screens = const [
    HomeScreen(),
    ExploreScreen(),
    OrdersScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: Colors.white,
        selectedIndex: index,
        curve: Curves.easeIn,
        items: [
          BottomNavyBarItem(
            icon: const Icon(LineIcons.home),
            activeColor: Theme.of(context).primaryColor,
            title: const Text('Home'),
            inactiveColor: Theme.of(context).colorScheme.secondary,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(LineIcons.search),
            activeColor: Theme.of(context).primaryColor,
            title: const Text('Explore'),
            textAlign: TextAlign.center,
            inactiveColor: Theme.of(context).colorScheme.secondary,
          ),
          BottomNavyBarItem(
            icon: const Icon(LineIcons.shoppingBag),
            activeColor: Theme.of(context).primaryColor,
            title: const Text('Orders'),
            textAlign: TextAlign.center,
            inactiveColor: Theme.of(context).colorScheme.secondary,
          ),
          BottomNavyBarItem(
            icon: const Icon(LineIcons.cog),
            activeColor: Theme.of(context).primaryColor,
            title: const Text('Settings'),
            inactiveColor: Theme.of(context).colorScheme.secondary,
            textAlign: TextAlign.center,
          ),
        ],
        onItemSelected: (val) {
          setState(() => index = val);
        },
      ),
    );
  }
}
