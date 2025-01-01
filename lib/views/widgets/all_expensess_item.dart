import 'package:admin_dashboard/models/all_expensess_item_header_model.dart';
import 'package:admin_dashboard/utlis/app_images.dart';
import 'package:admin_dashboard/utlis/styles.dart';
import 'package:admin_dashboard/views/widgets/all_expensess_item_header.dart';
import 'package:admin_dashboard/views/widgets/inactive_and_active_expensess_item.dart';
import 'package:flutter/material.dart';

class AllExpensessItem extends StatelessWidget {
  const AllExpensessItem(
      {super.key, required this.itemModel, required this.isSelected});
  final AllExpensessItemHeaderModel itemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensessItem(
            itemModel: itemModel,
          )
        : InActiveAllExpensessItem(
            itemModel: itemModel,
          );
  }
}
