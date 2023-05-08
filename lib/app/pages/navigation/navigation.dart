import 'dart:math';

import 'package:book_store/app/pages/navigation/navigation_mapper.dart';
import 'package:book_store/app/pages/pages.dart';
import 'package:book_store/app/res/colors.dart';
import 'package:book_store/app/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  //* Update currentIndex with onTap method

  void onTap(int index) {
    setState(() => selectedIndex = index);

    if (!history.contains(selectedIndex)) {
      history.add(selectedIndex); 
    }
  }

  List<int> history = [0];

  Future<bool> onWillPop() async {
    if (navigationMapper[selectedIndex]!.currentState!.canPop()) {
      navigationMapper[selectedIndex]!.currentState!.pop();
    } else if (history.length > 1) {
      setState(() => history.removeLast());
      selectedIndex = history.last;
    } else if (history.length == 1) {
      setState(() => selectedIndex = history.first);
    }

    return false;
  }

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    //* Get size of the screen/page
    Size size = MediaQuery.of(context).size;

    return WillPopScope(
      onWillPop: onWillPop,
      child: Scaffold(
        backgroundColor: AppColors.background,
        //* Create custom [BottomNavigationBar] for (Home, Explore) screens/pages
        bottomNavigationBar: BottomNavigation(
          size: size,
          index: selectedIndex,
          onTap: onTap,
        ),
        //* To save the state after moving from Home or Explore to another screens/pages
        body: SafeArea(
          child: IndexedStack(
            index: selectedIndex,
            children: [
              Navigator(
                key: homePageState,
                onGenerateRoute: (settings) => MaterialPageRoute(
                  builder: (_) => const HomePage(),
                ),
              ),
              Navigator(
                key: explorePageState,
                onGenerateRoute: (settings) => MaterialPageRoute(
                  builder: (_) => const ExplorePage(),
                ),
              ),
              Navigator(
                key: cartPageState,
                onGenerateRoute: (settings) => MaterialPageRoute(
                  builder: (_) => const Center(
                    child: Text('Cart'),
                  ),
                ),
              ),
              Navigator(
                key: communityPageState,
                onGenerateRoute: (settings) => MaterialPageRoute(
                  builder: (_) => const Center(
                    child: Text('Community'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
