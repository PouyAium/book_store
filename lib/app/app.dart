import 'package:book_store/app/routes/names.dart';
import 'package:book_store/app/routes/routes.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: routeNavigation,
      routes: routes,
    );
  }
}
