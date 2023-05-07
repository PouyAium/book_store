import 'package:book_store/app/pages/pages.dart';
import 'package:book_store/app/res/icons.dart';
import 'package:flutter/material.dart';

List<Widget> pages = [
  const HomePage(),
  const ExplorePage(),
  const Center(child: Text('Cart')),
  const Center(child: Text('Community')),
];

Map<String, IconData> items = {
  'Library': AppIcons.library,
  'Explore': AppIcons.explore,
  'Cart': AppIcons.cart,
  'Community': AppIcons.community,
}; 