import 'package:book_store/app/constants/constants.dart';
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
  int currentIndex = 0;
  void onTap(int index) => setState(() => currentIndex = index);

  @override
  Widget build(BuildContext context) { 

    //* Get size of the screen/page
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.background, 
      //* Create custom [BottomNavigationBar] for (Home, Explore) screens/pages
      bottomNavigationBar: BottomNavigation(
        size: size,
        index: currentIndex,
        onTap: onTap,
      ),
      //* To save the state after moving from Home or Explore to another screens/pages
      body: SafeArea(
        child: IndexedStack( 
          index: currentIndex,
          children: pages,
        ),
      ),
    );
  }
}
