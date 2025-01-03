import 'package:admin_dashboard/views/widgets/allexpensess_andd_quick_invoices_section.dart';
import 'package:admin_dashboard/views/widgets/custom_drawer.dart';
import 'package:admin_dashboard/views/widgets/dashboard_mobile_layout.dart';
import 'package:admin_dashboard/views/widgets/income_section.dart';
import 'package:admin_dashboard/views/widgets/my_card_and_transaction_section.dart';
import 'package:flutter/material.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.only(top: 40),
              child: DashBoardMobileLayout(),
            )),
        SizedBox(
          width: 32,
        )
      ],
    );
  }
}
