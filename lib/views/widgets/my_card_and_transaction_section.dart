import 'package:admin_dashboard/views/widgets/custom_background_container.dart';
import 'package:admin_dashboard/views/widgets/my_card_section.dart';
import 'package:admin_dashboard/views/widgets/transaction_history.dart';
import 'package:flutter/material.dart';

class MyCardAndTransactionSection extends StatelessWidget {
  const MyCardAndTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
        child: Column(
      children: [
        MyCardSection(),
        Divider(
          color: Color(0xffF1F1F1),
          height: 40,
        ),
        TransactionHistory()
      ],
    ));
  }
}
