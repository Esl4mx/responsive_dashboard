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
        Text(
          "Transaction History",
          style: AppStyels.styleSemibold20(context),
        ),
        Text(
          "see all",
          style: AppStyels.styleMedium16(context)
              .copyWith(color: const Color(0xff4EB7F2)),
        )
      ],
    );
  }
}
