import 'package:admin_dashboard/views/widgets/allexpensess_andd_quick_invoices_section.dart';
import 'package:admin_dashboard/views/widgets/custom_drawer.dart';
import 'package:admin_dashboard/views/widgets/income_section.dart';
import 'package:admin_dashboard/views/widgets/my_card_and_transaction_section.dart';
import 'package:flutter/material.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
            flex: 3,
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Padding(
                            padding: EdgeInsets.only(top: 40),
                            child: AllExpensessAndQuickInoicesSection(),
                          )),
                      SizedBox(
                        width: 24,
                      ),
                      Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 40,
                              ),
                              MyCardAndTransactionSection(),
                              SizedBox(
                                height: 24,
                              ),
                              Expanded(child: IncomeSection())
                            ],
                          )),
                    ],
                  ),
                )
              ],
            ))
      ],
    );
  }
}
