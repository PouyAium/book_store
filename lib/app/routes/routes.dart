import 'package:book_store/app/pages/pages.dart';
import 'package:book_store/app/routes/names.dart';
import 'package:flutter/material.dart';


//* Named routes 
Map<String, Widget Function(BuildContext)> routes = {
  navigation: (BuildContext context) => const NavigationPage(),
  home: (BuildContext context) => const HomePage(),
  explore: (BuildContext context) => const ExplorePage(),
  book: (BuildContext context) => const BookPage(),
};
