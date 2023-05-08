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

//* To get size of a text based on its letters.
Size textSize({
  required String text,
  required TextStyle textStyle,
  required int maxLines,
}) {
  final TextPainter textPainter = TextPainter(
    text: TextSpan(text: text, style: textStyle),
    maxLines: maxLines,
    textDirection: TextDirection.ltr,
  )..layout(
      minWidth: 0,
      maxWidth: double.infinity,
    );
  return textPainter.size;
}
