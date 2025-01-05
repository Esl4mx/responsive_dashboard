import 'package:admin_dashboard/utlis/styles.dart';
import 'package:admin_dashboard/views/widgets/all_dots_indicator.dart';
import 'package:admin_dashboard/views/widgets/cards_page_view.dart';
import 'package:flutter/material.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Card",
          style: AppStyels.styleSemibold20(context),
        ),
        const SizedBox(
          height: 20,
        ),
        MyCardPageView(
          pageController: pageController,
        ),
        const SizedBox(
          height: 20,
        ),
        AllDotsIndicator(
          currentPageIndex: currentPageIndex,
        )
      ],
    );
  }
}
