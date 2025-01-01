import 'package:admin_dashboard/utlis/styles.dart';
import 'package:admin_dashboard/views/widgets/custom_background_container.dart';
import 'package:admin_dashboard/views/widgets/custom_text_field.dart';
import 'package:admin_dashboard/views/widgets/lates_transaction.dart';
import 'package:admin_dashboard/views/widgets/latest_transaction_list_view.dart';
import 'package:admin_dashboard/views/widgets/quick_invoice_header.dart';
import 'package:admin_dashboard/views/widgets/quick_invoices_form.dart';
import 'package:admin_dashboard/views/widgets/title_and_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class QuickInvoices extends StatelessWidget {
  const QuickInvoices({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuickInvoicesHeader(),
        LatestTransaction(),
        Divider(
          height: 48,
          color: Color(0xffF1F1F1),
        ),
        QuiclInvoicesForm(),
      ],
    ));
  }
}
