import 'package:admin_dashboard/utlis/styles.dart';
import 'package:admin_dashboard/views/widgets/all_expensess_item_header.dart';
import 'package:admin_dashboard/views/widgets/custom_background_container.dart';
import 'package:admin_dashboard/views/widgets/income_chart.dart';
import 'package:admin_dashboard/views/widgets/income_details.dart';
import 'package:admin_dashboard/views/widgets/income_section_header.dart';
import 'package:admin_dashboard/views/widgets/options_range.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: Column(
        children: [
          IncomeSectionHeader(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: IncomeChart(),
              ),
              Expanded(child: IncomeDetails())
            ],
          )
        ],
      ),
    );
  }
}
