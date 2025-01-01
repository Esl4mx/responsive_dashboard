import 'package:admin_dashboard/views/widgets/all_expensess.dart';
import 'package:admin_dashboard/views/widgets/custom_drawer.dart';
import 'package:admin_dashboard/views/widgets/quick_invoices.dart';
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
        Expanded(
            flex: 3,
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                AllExpensess(),
                SizedBox(
                  height: 24,
                ),
                QuickInvoices(),
              ],
            ))
      ],
    );
  }
}
