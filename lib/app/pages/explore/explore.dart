import 'package:book_store/app/pages/explore/widgets/poster.dart'; 
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

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        //* Custom App Bar
        SliverPadding(
          padding: const EdgeInsets.symmetric(
              horizontal: Dimensions.small, vertical: Dimensions.small),
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
      ],
    );
  }
}
