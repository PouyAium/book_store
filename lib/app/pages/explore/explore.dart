import 'package:book_store/app/mock/categories.dart';
import 'package:book_store/app/pages/explore/widgets/categories_list.dart';
import 'package:book_store/app/pages/explore/widgets/poster.dart';
import 'package:book_store/app/res/colors.dart';
import 'package:book_store/app/res/dimensions.dart';
import 'package:book_store/app/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'widgets/slider_indicator.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  int sliderIndex = 0;
  int categoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        //* Custom App Bar
        SliverPadding(
          padding: const EdgeInsets.symmetric(
            horizontal: Dimensions.small,
            vertical: Dimensions.small,
          ),
          sliver: SliverToBoxAdapter(
            child: CustomAppBar(size: size, flag: false),
          ),
        ),

        //* Custom Slider
        SliverPadding(
          padding: const EdgeInsets.only(
            top: Dimensions.normal,
            bottom: Dimensions.small,
          ),
          sliver: SliverToBoxAdapter(
            child: Poster(
              size: size,
              sliderIndex: sliderIndex,
              onPageChanged: (index, reason) =>
                  setState(() => sliderIndex = index),
            ),
          ),
        ),

        //* Slider Indicator
        SliverToBoxAdapter(
          child: SliderIndicator(
            sliderIndex: sliderIndex,
            size: size,
          ),
        ),

        const SliverPadding(
          padding: EdgeInsets.only(
            left: Dimensions.normal,
            top: Dimensions.normal,
          ),
          sliver: SliverToBoxAdapter(
            child: Text(
              'Categories',
              style: TextStyle(
                color: AppColors.secondary,
                fontSize: Dimensions.large,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),

        //* Categories titles
        SliverPadding(
          padding: const EdgeInsets.symmetric(
              horizontal: Dimensions.normal, vertical: Dimensions.xSmall),
          sliver: SliverToBoxAdapter(
            child: SizedBox(
              height: size.height * 0.04,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Categories.values.length,
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return CategoriesList(
                    index: index,
                    categoryIndex: categoryIndex,
                    onTap: () => setState(
                      () => categoryIndex = index,
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
