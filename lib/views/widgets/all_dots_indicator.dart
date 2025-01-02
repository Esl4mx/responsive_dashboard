import 'package:admin_dashboard/views/widgets/custom_dot.dart';
import 'package:flutter/material.dart';

class AllDotsIndicator extends StatelessWidget {
  const AllDotsIndicator({super.key, required this.currentPageIndex});
  final int currentPageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 6),
          child: CustomDotIndcator(isActive: index == currentPageIndex),
        ),
      ),
    );
  }
}
