import 'package:admin_dashboard/models/transaction_history_model.dart';
import 'package:admin_dashboard/views/widgets/transaction_item.dart';
import 'package:flutter/material.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const items = [
    TransactionModel(
        title: "Cash Withdrawal",
        date: "13 Apr, 2022 ",
        amount: r"$20,129",
        isWithdraw: true),
    TransactionModel(
        title: "Landing Page project",
        date: "13 Apr, 2022 ",
        amount: r"$20,000",
        isWithdraw: false),
    TransactionModel(
        title: "Juni Mobile App project",
        date: "13 Apr, 2022 ",
        amount: r"$20,129",
        isWithdraw: false),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return TransactionItem(
          transactionModel: items[index],
        );
      },
    );
  }
}
