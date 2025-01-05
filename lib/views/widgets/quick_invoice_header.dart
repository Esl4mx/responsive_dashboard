import 'package:admin_dashboard/utlis/styles.dart';
import 'package:flutter/material.dart';

class QuickInvoicesHeader extends StatelessWidget {
  const QuickInvoicesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Quick Invoice",
          style: AppStyels.styleSemibold20(context),
        ),
        const Spacer(),
        Container(
          width: 48,
          height: 48,
          decoration: const BoxDecoration(
            color: Color(0xffFAFAFA),
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.add,
            color: Color(0xff4EB7F2),
          ),
        )
      ],
    );
  }
}
