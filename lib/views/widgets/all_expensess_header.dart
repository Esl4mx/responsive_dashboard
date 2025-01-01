import 'package:admin_dashboard/utlis/styles.dart';
import 'package:admin_dashboard/views/widgets/options_range.dart';
import 'package:flutter/material.dart';

class AllExpensessHeader extends StatelessWidget {
  const AllExpensessHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "All Expenses",
          style: AppStyels.styleSemibold20,
        ),
        Expanded(child: SizedBox()),
        OptionsRange()
      ],
    );
  }
}
