import 'dart:io';
import 'dart:math';

import 'package:book_store/app/pages/navigation/navigation_mapper.dart';
import 'package:book_store/app/pages/pages.dart';
import 'package:book_store/app/res/colors.dart';
import 'package:book_store/app/res/dimensions.dart';
import 'package:book_store/app/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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

  bool flag = false;

  Future<bool> onWillPop() async {
    if (navigationMapper[selectedIndex]!.currentState!.canPop()) {
      navigationMapper[selectedIndex]!.currentState!.pop();
    } else if (history.length > 1) {
      setState(() => history.removeLast());
      selectedIndex = history.last;
    } else if (history.length == 1) {
      setState(() => selectedIndex = history.first);
      showDialog(
        context: context,
        builder: (_) => alertDialog(),
      );
    }

    return flag;
  }

  

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    //* Get size of the screen/page
    Size size = MediaQuery.of(context).size;

    return WillPopScope(
      onWillPop: onWillPop,
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: SafeArea(
          child: Scaffold(
            backgroundColor: AppColors.background,
            bottomNavigationBar: BottomNavigation(
              size: size,
              index: selectedIndex,
              onTap: onTap,
            ),
            body: IndexedStack(
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
      ),
    );
  }

  AlertDialog alertDialog() {
    return AlertDialog(
        backgroundColor: AppColors.background,
        shadowColor: AppColors.blueGrey,
        elevation: Dimensions.small,
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                setState(() => flag = true);
                exit(0);
              },
              child: const Text(
                'Yes',
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: Dimensions.normal,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() => flag = false);
                Navigator.pop(context, flag);
              },
              child: const Text(
                'No',
                style: TextStyle(
                  color: Colors.greenAccent,
                  fontSize: Dimensions.normal,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        icon: const Icon(
          Icons.crisis_alert_outlined,
          color: Colors.red,
        ),
        actionsAlignment: MainAxisAlignment.center,
        title: const Text('Do you want to leave the app?'),
      );
  }
}
