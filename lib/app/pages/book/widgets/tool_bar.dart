import 'package:book_store/app/res/colors.dart';
import 'package:book_store/app/res/dimensions.dart';
import 'package:flutter/material.dart';

class ToolBar extends StatelessWidget {
  const ToolBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: ()=> Navigator.of(context).pop(),
          child: const Icon(
            Icons.chevron_left,
            size: Dimensions.xxLarge,
          ),
        ),
        TextButton(
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(AppColors.secondary)),
          onPressed: () {},
          child: const Text(
            '+ Add to Wishlist',
            style: TextStyle(color: AppColors.white),
          ),
        ),
      ],
    );
  }
}
