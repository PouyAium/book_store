import 'package:book_store/app/mock/sliders.dart';
import 'package:book_store/app/res/colors.dart';
import 'package:book_store/app/res/dimensions.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Poster extends StatelessWidget {
  const Poster({
    super.key,
    required this.size,
    required this.sliderIndex,
    required this.onPageChanged,
  });

  final Size size;
  final int sliderIndex;
  final void Function(int index, CarouselPageChangedReason reason)
      onPageChanged;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: [
          for (int i = 0; i < sliders.length; i++)
            Container(
              width: size.width,
              margin: const EdgeInsets.symmetric(
                horizontal: Dimensions.normal,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: Dimensions.normal,
                vertical: Dimensions.normal,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.small),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    sliders[i].imageUrl,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    sliders[i].title,
                    style: const TextStyle(
                      color: AppColors.white,
                      fontSize: Dimensions.normal,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: Dimensions.normal),
                  TextButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        AppColors.background,
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Explore',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
        options: CarouselOptions(
          animateToClosest: true,
          enlargeCenterPage: true,
          height: size.height * .23,
          reverse: false,
          scrollDirection: Axis.horizontal,
          enableInfiniteScroll: false,
          scrollPhysics: const BouncingScrollPhysics(),
          autoPlay: true,
          autoPlayAnimationDuration: const Duration(seconds: 1),
          autoPlayCurve: Curves.easeInOut,
          viewportFraction: 1,
          onPageChanged: onPageChanged,
        ));
  }
}
