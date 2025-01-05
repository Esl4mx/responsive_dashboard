import 'package:admin_dashboard/views/widgets/custom_background_container.dart';

import 'package:admin_dashboard/views/widgets/income_section_body.dart';
import 'package:admin_dashboard/views/widgets/income_section_header.dart';
import 'package:flutter/material.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: Column(
        children: [IncomeSectionHeader(), IncomeSectionbody()],
      ),
    );
  }
}
