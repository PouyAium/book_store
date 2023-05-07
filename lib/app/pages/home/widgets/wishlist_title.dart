import 'package:book_store/app/res/colors.dart';
import 'package:book_store/app/res/dimensions.dart';
import 'package:flutter/material.dart';

class WishlistTitle extends StatelessWidget {
  const WishlistTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(
        left: Dimensions.normal,
        right: Dimensions.normal, 
        bottom: Dimensions.normal,
      ),
      sliver: SliverToBoxAdapter(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'My Wishlist',
              style: TextStyle(
                color: AppColors.primary,
                fontSize: Dimensions.large,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: Dimensions.small,
                horizontal: Dimensions.small,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.small),
                border: Border.all(
                  color: AppColors.primary,
                  width: 1,
                ),
              ),
              child: const Text(
                'See more',
                style: TextStyle(
                  color: AppColors.primary, 
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
