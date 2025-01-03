import 'package:admin_dashboard/utlis/styles.dart';
import 'package:admin_dashboard/views/widgets/options_range.dart';
import 'package:flutter/material.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "Income",
          style: AppStyels.styleSemibold20,
        ),
        Spacer(),
        OptionsRange() // should be drop down button
      ],
    );
  }
}
