import 'package:admin_dashboard/models/all_expensess_item_header_model.dart';
import 'package:admin_dashboard/utlis/app_images.dart';
import 'package:admin_dashboard/views/widgets/all_expensess_header.dart';
import 'package:admin_dashboard/views/widgets/all_expensess_item.dart';
import 'package:admin_dashboard/views/widgets/all_expensess_item_list_view.dart';
import 'package:admin_dashboard/views/widgets/custom_background_container.dart';
import 'package:flutter/material.dart';

class AllExpensess extends StatelessWidget {
  const AllExpensess({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: Column(
        children: [
          AllExpensessHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensessItemListView()
        ],
      ),
    );
  }
}
