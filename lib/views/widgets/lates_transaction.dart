import 'package:admin_dashboard/utlis/styles.dart';
import 'package:admin_dashboard/views/widgets/latest_transaction_list_view.dart';
import 'package:flutter/material.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Latest Transaction",
          style: AppStyels.styleMedium16,
        ),
        SizedBox(
          height: 16,
        ),
        LatesTransactionListView()
      ],
    );
  }
}
