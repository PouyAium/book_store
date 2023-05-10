import 'package:book_store/app/constants/constants.dart';
import 'package:book_store/app/enums/book.dart';
import 'package:book_store/app/gen/assets.gen.dart';
import 'package:book_store/app/pages/book/widgets/tool_bar.dart';
import 'package:book_store/app/res/dimensions.dart';
import 'package:flutter/material.dart';

import 'widgets/book_details.dart';
import 'widgets/user_details.dart';

class BookPage extends StatefulWidget {
  const BookPage({
    super.key,
  });

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> with SingleTickerProviderStateMixin {
  late final TabController tabController; 
  // tabIndex
  int tabIndex = 0;

  double opacity = 1;

  @override
  void initState() {
    tabController = TabController(
      length: Book.values.length,
      vsync: this,
      initialIndex: tabIndex,
    );
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //* size of page / screen
    Size size = MediaQuery.of(context).size;

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
            SliverPadding(
              padding: const EdgeInsets.symmetric(
                horizontal: Dimensions.normal,
                vertical: Dimensions.medium,
              ),
              sliver: SliverToBoxAdapter(
                child: UserDetails(
                  size: size,
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(
                horizontal: Dimensions.normal,
                vertical: Dimensions.xSmall,
              ),
              sliver: SliverToBoxAdapter(
                child: BookDetails(tabController: tabController),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(
                horizontal: Dimensions.normal,
                vertical: Dimensions.medium,
              ),
              sliver: SliverToBoxAdapter(
                child: Text(loremIpsum),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
