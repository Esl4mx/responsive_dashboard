import 'package:admin_dashboard/views/widgets/allexpensess_andd_quick_invoices_section.dart';
import 'package:admin_dashboard/views/widgets/income_section.dart';
import 'package:admin_dashboard/views/widgets/my_card_and_transaction_section.dart';
import 'package:flutter/material.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensessAndQuickInoicesSection(),
          SizedBox(
            height: 24,
          ),
          MyCardAndTransactionSection(),
          SizedBox(
            height: 24,
          ),
          IncomeSection()
        ],
      ),
    );
  }
}
