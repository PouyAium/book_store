import 'package:book_store/app/constants/constants.dart';
import 'package:book_store/app/res/colors.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    super.key,
    required this.size,
    required this.index,
    required this.onTap,
  });

  final Size size;
  final int index;
  final void Function(int index) onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * .11,
      width: double.infinity,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColors.bottomNavigationShadow,
            offset: Offset(1, -3),
            blurRadius: 10,
            spreadRadius: 5,
          ),
        ],
      ),
      child: BottomNavigationBar(
        currentIndex: index,
        elevation: 10,
        showUnselectedLabels: true,
        onTap: (index) => onTap(index),
        selectedItemColor: AppColors.secondary,
        unselectedItemColor: AppColors.blueGrey,
        selectedIconTheme: const IconThemeData(color: AppColors.primary),
        items: items
            .map(
              (title, icon) => MapEntry(
                title,
                BottomNavigationBarItem(
                  label: title,
                  icon: Icon(icon, size: 30.0),
                ),
              ),
            )
            .values
            .toList(),
      ),
    );
  }
}
