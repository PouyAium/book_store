import 'package:book_store/app/models/library.dart';
import 'package:book_store/app/res/dimensions.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class DiscoverMore extends StatelessWidget {
  const DiscoverMore({
    super.key,
    required this.size,
    required this.library,
  });

  final Size size;
  final Library library;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * .2,
      width: size.width * .26,
      margin: const EdgeInsets.only(left: Dimensions.normal),
      padding: EdgeInsets.only(
        top: Dimensions.small,
        bottom: size.width * 0.165,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.medium),
      ),
      child: DottedBorder(
        radius: const Radius.circular(Dimensions.xSmall),
        borderType: BorderType.RRect,
        child: InkWell(
          onTap: (){},
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    library.imageUrl,
                    style: const TextStyle(
                      fontSize: Dimensions.large,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    library.name,
                    style: const TextStyle( 
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}