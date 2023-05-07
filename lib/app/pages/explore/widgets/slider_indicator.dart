import 'package:book_store/app/mock/sliders.dart';
import 'package:book_store/app/res/colors.dart';
import 'package:book_store/app/res/dimensions.dart';
import 'package:flutter/material.dart';

class SliderIndicator extends StatelessWidget {
  const SliderIndicator({
    super.key,
    required this.sliderIndex,
    required this.size,
  });

  final int sliderIndex;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int j = 0; j < sliders.length; j++)
          AnimatedContainer(
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
            margin: const EdgeInsets.only(right: Dimensions.xSmall),
            width: sliderIndex == j ? size.width * .23 : Dimensions.small,
            height: Dimensions.small,
            decoration: BoxDecoration(
              color: sliderIndex == j
                  ? AppColors.primary
                  : AppColors.blueGrey.withOpacity(.3),
              borderRadius: BorderRadius.circular(
                Dimensions.small,
              ),
            ),
          ),
      ],
    );
  }
}
