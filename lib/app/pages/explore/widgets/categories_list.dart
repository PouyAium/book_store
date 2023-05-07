import 'package:book_store/app/mock/categories.dart';
import 'package:book_store/app/res/colors.dart';
import 'package:book_store/app/res/dimensions.dart';
import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    super.key,
    required this.index,
    required this.categoryIndex,
    required this.onTap,
  });

  final int index;
  final int categoryIndex;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor: const MaterialStatePropertyAll(AppColors.white),
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: Dimensions.small,
            ),
            child: Text(
              Categories.values[index].toUpperCase(),
              style: const TextStyle(
                color: AppColors.grey,
              ),
            ),
          ),
          if (categoryIndex == index)
            Container(
              margin: const EdgeInsets.only(
                top: Dimensions.xxSmall,
              ),
              height: Dimensions.xSmall,
              width: _textSize(
                Categories.values[index].name,
                const TextStyle(
                  color: AppColors.grey,
                ),
              ).width,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(
                  Dimensions.normal,
                ),
              ),
            ),
        ],
      ),
    );
  }

  //* Get size of categories titles
  Size _textSize(String text, TextStyle textStyle) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(text: text, style: textStyle),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout(
        minWidth: 0,
        maxWidth: double.infinity,
      );
    return textPainter.size;
  }
}
