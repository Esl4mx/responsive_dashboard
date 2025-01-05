import 'package:admin_dashboard/models/transaction_history_model.dart';
import 'package:admin_dashboard/utlis/styles.dart';
import 'package:admin_dashboard/views/widgets/transacrion_history_header.dart';
import 'package:admin_dashboard/views/widgets/transaction_history_list_view.dart';
import 'package:admin_dashboard/views/widgets/transaction_item.dart';
import 'package:flutter/material.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(
          height: 20,
        ),
        Text(
          "13 April 2022",
          style: AppStyels.styleMedium16(context)
              .copyWith(color: const Color(0xffAAAAAA)),
        ),
        const SizedBox(
          height: 16,
        ),
        const TransactionHistoryListView()
      ],
    );
  }
}
