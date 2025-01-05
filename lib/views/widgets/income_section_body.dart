import 'dart:developer';

import 'package:admin_dashboard/utlis/size_config.dart';
import 'package:admin_dashboard/views/widgets/income_chart.dart';
import 'package:admin_dashboard/views/widgets/income_chart_details.dart';
import 'package:admin_dashboard/views/widgets/income_details.dart';
import 'package:flutter/material.dart';

class IncomeSectionbody extends StatelessWidget {
  const IncomeSectionbody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width <= 1750
        ? const Expanded(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: IncomeChartDetails(),
            ),
          )
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: IncomeChart(),
              ),
              Expanded(flex: 2, child: IncomeDetails())
            ],
          );
  }
}
