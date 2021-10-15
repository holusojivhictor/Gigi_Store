import 'package:flutter/material.dart';
import 'package:gigi_store/constants.dart';
import 'package:gigi_store/models/tab_manager.dart';
import 'package:gigi_store/screens/favorites/favorites.dart';
import 'package:gigi_store/screens/home/home_screen.dart';
import 'package:gigi_store/screens/messaging/message_screen.dart';
import 'package:gigi_store/screens/profile/profile_screen.dart';
import 'package:provider/provider.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {

  static List<Widget> pages = [
    HomeScreen(),
    Favorites(),
    MessageScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<TabManager>(builder: (context, tabManager, child) {
      return Scaffold(
        body: IndexedStack(index: tabManager.selectedTab, children: pages),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: tabManager.selectedTab,
          onTap: (index) {
            tabManager.goToTab(index);
          },
          selectedItemColor: Constants.kPrimaryColor,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bubble_chart_outlined),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "",
            ),
          ],
        ),
      );
    });
  }
}