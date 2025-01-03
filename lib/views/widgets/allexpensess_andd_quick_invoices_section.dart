import 'package:admin_dashboard/views/widgets/all_expensess.dart';
import 'package:admin_dashboard/views/widgets/quick_invoices.dart';
import 'package:flutter/material.dart';

class AllExpensessAndQuickInoicesSection extends StatelessWidget {
  const AllExpensessAndQuickInoicesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpensess(),
        SizedBox(
          height: 24,
        ),
        QuickInvoices(),
      ],
    );
  }
}
