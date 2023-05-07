import 'package:book_store/app/models/library.dart';
import 'package:book_store/app/res/colors.dart';
import 'package:book_store/app/res/dimensions.dart';
import 'package:flutter/material.dart';

class LibraryList extends StatelessWidget {
  const LibraryList({
    super.key,
    required this.library,
    required this.size,
  });

  final Size size;
  final Library library;

  //* Calculate percent and stops.
  double stop(int percent) {
    if (percent != 100) {
      return percent / 100;
    }
    return 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: size.height * .2,
          width: size.width * .26,
          margin: const EdgeInsets.only(left: Dimensions.normal),
          child: Image.asset(library.imageUrl),
        ),
        Padding(
          padding: const EdgeInsets.only(left: Dimensions.normal),
          child: Text(library.name,
              style: const TextStyle(fontWeight: FontWeight.w400)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: size.width * .008,
              width: size.width * .16,
              margin: const EdgeInsets.only(
                  left: Dimensions.normal, top: Dimensions.small),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: AppColors.linearGradient,
                  stops: [
                    stop(library.percent),
                    stop(library.percent),
                  ],
                ),
                borderRadius: BorderRadius.circular(
                  Dimensions.xSmall,
                ),
              ),
            ),
            SizedBox(
              width: size.width * .01,
            ),
            Padding(
              padding: const EdgeInsets.only(top: Dimensions.small),
              child: Text(
                '${library.percent}%',
                style: const TextStyle(
                    fontSize: Dimensions.medium, fontWeight: FontWeight.w400),
              ),
            ),
          ],
        )
      ],
    );
  }
}
