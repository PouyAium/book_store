import 'package:book_store/app/gen/assets.gen.dart';
import 'package:book_store/app/res/colors.dart';
import 'package:book_store/app/res/dimensions.dart';
import 'package:book_store/app/res/icons.dart';
import 'package:flutter/material.dart'; 

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.size,
    required this.flag,
  });

  final Size size;
  //* [Refer to] -> Line[58] : used in two page[Home, Explore]
  final bool flag;
  
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
      children: [ 
        const Icon(AppIcons.menu, size : Dimensions.large),
        TextFormField(
          cursorColor: AppColors.primary,
          autocorrect: true,
          decoration: InputDecoration(
            constraints: BoxConstraints(
              maxHeight: Dimensions.xLarge,
              maxWidth: size.width * .6,
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Dimensions.normal),
                borderSide: BorderSide.none),
            fillColor: AppColors.grey.withOpacity(.18),
            filled: true,
            contentPadding: const EdgeInsets.symmetric(
              vertical: Dimensions.small,
              horizontal: Dimensions.small,
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Dimensions.normal),
                borderSide: BorderSide.none),
            suffixIcon: const Icon(
              AppIcons.search,
              color: AppColors.grey,
            ),
          ),
        ),
        const Icon(AppIcons.scan, size: Dimensions.large),
        Stack(
          children: [
            Positioned(
              child: Image.asset( 
                Assets.images.coloredNotification.path,
                height: Dimensions.large,
                width: Dimensions.large,
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Image.asset(
                Assets.images.elipse.path,
                height: Dimensions.small,
                width: Dimensions.small,
              ),
            ),
            flag
                ? Positioned(
                    left: 0,
                    top: 0,
                    child: Image.asset(
                      Assets.images.notification.path,
                      width: Dimensions.xNormal,
                      height: Dimensions.xNormal,
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ],
    );
  }
}
