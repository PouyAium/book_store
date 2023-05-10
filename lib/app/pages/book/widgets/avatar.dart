import 'package:book_store/app/gen/assets.gen.dart';
import 'package:book_store/app/res/colors.dart';
import 'package:book_store/app/res/dimensions.dart';
import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    super.key,
  });

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
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Dust Jacket',
                style: TextStyle(
                  color: AppColors.secondary,
                  fontSize: Dimensions.normal,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: Dimensions.small),
              Text(
                'By Pisco Printo ',
                style: TextStyle(
                  fontSize: Dimensions.medium,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        const Expanded(child: SizedBox()),
        const Padding(
          padding: EdgeInsets.only(bottom: Dimensions.large),
          child: Text(
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
