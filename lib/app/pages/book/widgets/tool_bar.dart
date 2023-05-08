import 'package:book_store/app/res/colors.dart';
import 'package:flutter/material.dart';

class ToolBar extends StatelessWidget {
  const ToolBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.chevron_left),
        TextButton(
          style : const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(AppColors.secondary)
          ),
          onPressed: () {},
          child: const Text(
            '+ Add to Wishlist',
            style: TextStyle(color: AppColors.white),
          ),
        )
      ],
    );
  }
}
