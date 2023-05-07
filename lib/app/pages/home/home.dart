import 'package:book_store/app/mock/libraries.dart';
import 'package:book_store/app/mock/wishlists.dart';
import 'package:book_store/app/models/library.dart';
import 'package:book_store/app/models/wishlist.dart';
import 'package:book_store/app/pages/home/widgets/library_list.dart';
import 'package:book_store/app/pages/home/widgets/rating_bar.dart';
import 'package:book_store/app/res/colors.dart';
import 'package:book_store/app/res/dimensions.dart';
import 'package:book_store/app/widgets/custom_app_bar.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import 'widgets/discover_more.dart';
import 'widgets/wishlist_list.dart';
import 'widgets/wishlist_title.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            child: CustomAppBar(size: size, flag: true),
          ),
        ),

        const SliverPadding(
          padding: EdgeInsets.symmetric(
              horizontal: Dimensions.normal, vertical: Dimensions.small),
          sliver: SliverToBoxAdapter(
            child: Text(
              'Hi PouyA.',
              style: TextStyle(
                color: AppColors.secondary,
                fontSize: Dimensions.normal,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        const SliverPadding(
          padding: EdgeInsets.only(
            left: Dimensions.normal,
            right: Dimensions.normal,
            top: Dimensions.normal,
          ),
          sliver: SliverToBoxAdapter(
            child: Text(
              'My Library',
              style: TextStyle(
                color: AppColors.secondary,
                fontSize: Dimensions.large,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),

        SliverToBoxAdapter(
          child: SizedBox(
            height: size.height * .27,
            child: ListView.builder(
              itemCount: libraries.length,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                //* Mock
                final Library library = libraries[index];
                if (library != libraries.last) {
                  return LibraryList(library: library, size: size);
                }
                return DiscoverMore(size: size, library: library);
              },
            ),
          ),
        ),
        //* Wishlist titles (My Wishlist title, See more button)
        const WishlistTitle(),

        //* Wishlist grid view 
        SliverPadding(
          padding: const EdgeInsets.only(
            left: Dimensions.xLarge,
          ),
          sliver: SliverGrid.builder(
            itemCount: wishlists.length,
            gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.45, 
            ),
            itemBuilder: (context, index) {
              Wishlist wishlist = wishlists[index];
              return WishlistList(wishlist: wishlist, size: size);
            },
          ),
        ),
      ],
    );
  }
}

