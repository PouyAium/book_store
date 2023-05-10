import 'package:book_store/app/gen/assets.gen.dart';
import 'package:book_store/app/pages/book/widgets/tool_bar.dart'; 
import 'package:book_store/app/res/dimensions.dart';
import 'package:flutter/material.dart';

import 'widgets/avatar.dart';

class BookPage extends StatelessWidget {
  const BookPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            const SliverPadding(
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.normal,
                vertical: Dimensions.small,
              ),
              sliver: SliverToBoxAdapter(
                child: ToolBar(),
              ),
            ),
            SliverToBoxAdapter(
              child: Image.asset(Assets.images.book.path),
            ),
            const SliverPadding(
              padding:  EdgeInsets.symmetric(
                horizontal: Dimensions.normal,
                vertical: Dimensions.medium,
              ),
              sliver: SliverToBoxAdapter(
                child: Avatar(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

