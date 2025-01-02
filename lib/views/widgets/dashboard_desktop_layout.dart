import 'package:admin_dashboard/views/widgets/all_dots_indicator.dart';
import 'package:admin_dashboard/views/widgets/all_expensess.dart';
import 'package:admin_dashboard/views/widgets/allexpensess_andd_quick_invoices_section.dart';
import 'package:admin_dashboard/views/widgets/cards_page_view.dart';
import 'package:admin_dashboard/views/widgets/custom_dot.dart';
import 'package:admin_dashboard/views/widgets/custom_drawer.dart';
import 'package:admin_dashboard/views/widgets/my_card.dart';
import 'package:admin_dashboard/views/widgets/my_card_and_transaction_section.dart';
import 'package:admin_dashboard/views/widgets/my_card_section.dart';
import 'package:admin_dashboard/views/widgets/quick_invoices.dart';
import 'package:admin_dashboard/views/widgets/transaction_history.dart';
import 'package:flutter/material.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(flex: 3, child: AllExpensessAndQuickInoicesSection()),
        SizedBox(
          width: 24,
        ),
        Expanded(flex: 2, child: MyCardAndTransactionSection()),
      ],
    );
  }
}
