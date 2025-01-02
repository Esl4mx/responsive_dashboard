import 'package:admin_dashboard/utlis/styles.dart';
import 'package:flutter/material.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Transaction History",
          style: AppStyels.styleSemibold20,
        ),
        Text(
          "see all",
          style:
              AppStyels.styleMedium16.copyWith(color: const Color(0xff4EB7F2)),
        )
      ],
    );
  }
}
