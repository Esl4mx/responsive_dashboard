import 'package:admin_dashboard/models/transaction_history_model.dart';
import 'package:admin_dashboard/utlis/styles.dart';
import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});
  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: ListTile(
        title: Text(
          transactionModel.title,
          style: AppStyels.styleSemiBold16,
        ),
        subtitle: Text(
          transactionModel.date,
          style:
              AppStyels.styleRegular16.copyWith(color: const Color(0xffAAAAAA)),
        ),
        trailing: Text(
          transactionModel.amount,
          style: AppStyels.styleSemibold20.copyWith(
              color: transactionModel.isWithdraw
                  ? const Color(0xffF3735E)
                  : const Color(0xff7DD97B)),
        ),
      ),
    );
  }
}
