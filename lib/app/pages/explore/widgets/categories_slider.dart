import 'package:book_store/app/constants/constants.dart';
import 'package:book_store/app/enums/category.dart';
import 'package:book_store/app/res/colors.dart';
import 'package:book_store/app/res/dimensions.dart';
import 'package:flutter/material.dart';

class CategoriesSlider extends StatelessWidget {
  const CategoriesSlider({
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
              CategoryItems.values[index].toUpperCase(),
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
              width: textSize(
                text: CategoryItems.values[index].name,
                textStyle : const TextStyle(
                  color: AppColors.grey,
                ),
                maxLines: 1,
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
}
