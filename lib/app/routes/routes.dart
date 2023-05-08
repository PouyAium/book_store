import 'package:book_store/app/pages/pages.dart';
import 'package:book_store/app/routes/names.dart';
import 'package:flutter/material.dart';

//* Named routes
Map<String, Widget Function(BuildContext)> routes = {
  routeNavigation: (BuildContext context) => const NavigationPage(),
  routeHome: (BuildContext context) => const HomePage(),
  routeExplore: (BuildContext context) => const ExplorePage(),
  routeBook: (BuildContext context) => const BookPage(),
};
