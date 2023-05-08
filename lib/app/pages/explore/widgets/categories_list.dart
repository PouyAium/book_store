import 'package:book_store/app/models/category.dart';
import 'package:book_store/app/pages/book/book.dart';
import 'package:book_store/app/res/colors.dart';
import 'package:book_store/app/res/dimensions.dart';
import 'package:book_store/app/routes/names.dart';
import 'package:book_store/app/widgets/rating_bar.dart';
import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    super.key,
    required this.category,
    required this.index,
  });

  final Category category;
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => const BookPage(),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(tag: '$index', child: Image.asset(category.imageUrl)),
          const SizedBox(height: Dimensions.xxSmall),
          Expanded(
            child: Text(
              category.name,
              style: const TextStyle(
                color: AppColors.secondary,
                fontSize: Dimensions.normal,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Text(
            category.author,
            style: const TextStyle(
              color: AppColors.grey,
              fontSize: Dimensions.medium,
              fontWeight: FontWeight.w500,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: Dimensions.medium),
            child: RatingBar(rate: category.rate),
          ),
        ],
      ),
    );
  }
}
