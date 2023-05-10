import 'package:book_store/app/gen/assets.gen.dart';
import 'package:book_store/app/res/colors.dart';
import 'package:book_store/app/res/dimensions.dart';
import 'package:book_store/app/widgets/rating_bar.dart';
import 'package:flutter/material.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(Assets.images.user.path),
          radius: Dimensions.xLarge,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: Dimensions.small,
            bottom: Dimensions.xSmall,
            top: Dimensions.xLarge,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Dust Jacket',
                style: TextStyle(
                  color: AppColors.secondary,
                  fontSize: Dimensions.normal,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: Dimensions.small),
              const Text(
                'By Pisco Printo ',
                style: TextStyle(
                  fontSize: Dimensions.medium,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: Dimensions.normal),
              Row(
                children: const [
                  RatingBar(rate: 5, size: Dimensions.normal),
                  Text(
                    '|1.500 Reads',
                    style: TextStyle(
                      color: AppColors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Expanded(child: SizedBox()),
        Padding(
          padding: EdgeInsets.only(bottom: size.height * .027),
          child: const Text(
            '\$10.00',
            style: TextStyle(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
              fontSize: Dimensions.normal,
            ),
          ),
        ),
      ],
    );
  }
}
