import 'package:book_store/app/res/colors.dart';
import 'package:book_store/app/res/dimensions.dart';
import 'package:flutter/material.dart';

class RatingBar extends StatelessWidget {
  const RatingBar({
    super.key,
    required this.rate,
  });

  final int rate;

  @override
  Widget build(BuildContext context) {
    List<Widget> generateStars() {
      List<Widget> icons = [];
      for (int i = 1; i <= 5; i++) {
        icons.add(
          Padding(
            padding: (i != 1)
                ? const EdgeInsets.only(left: Dimensions.xxSmall)
                : const EdgeInsets.only(),
            child: Icon(
              Icons.star,
              size: 10,
              color:
                  rate >= i ? AppColors.star : AppColors.grey.withOpacity(.7),
            ),
          ),
        );
      }
      return icons;
    }

    return Row(
      children: generateStars(),
    );
  }
}
