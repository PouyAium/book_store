import 'package:book_store/app/enums/book.dart';
import 'package:book_store/app/res/colors.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController, 
      indicatorColor: AppColors.primary,
      labelColor: Colors.black ,
      unselectedLabelColor: Colors.black,
      tabs: [
        for (int i = 0; i < Book.values.length; i++)
          Tab(
            text: Book.values[i].toUpperCase(), 
          )
      ],
    );
  }
}
