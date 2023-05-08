import 'package:book_store/app/models/wishlist.dart';
import 'package:book_store/app/res/dimensions.dart';
import 'package:book_store/app/widgets/rating_bar.dart';
import 'package:flutter/material.dart';

class WishlistList extends StatelessWidget {
  const WishlistList({
    super.key,
    required this.wishlist,
    required this.size,
  });

  final Wishlist wishlist;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: Dimensions.medium),
      child: Row(
        children: [
          Image.asset(wishlist.imageUrl),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: Dimensions.normal),
              SizedBox(
                width: size.width * .25,
                height: size.height * .02,
                child: Row(
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(left: Dimensions.small),
                        child: Text(
                          wishlist.name,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          softWrap: false,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: Dimensions.xxSmall),
              SizedBox(
                width: size.width * .25,
                height: size.height * .02,
                child: Row(
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(left: Dimensions.small),
                        child: Text(
                          wishlist.author,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          softWrap: false,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.05),
              Padding(
                  padding: const EdgeInsets.only(left: Dimensions.small),
                  child: RatingBar(rate: wishlist.review)),
            ],
          ),
        ],
      ),
    );
  }
}
