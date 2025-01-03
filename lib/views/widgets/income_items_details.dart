import 'package:admin_dashboard/models/item_details_model.dart';
import 'package:admin_dashboard/utlis/styles.dart';
import 'package:flutter/material.dart';

class IncomeItemDeatils extends StatelessWidget {
  const IncomeItemDeatils({super.key, required this.itemDetailsModel});

  final ItemDetailsModel itemDetailsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: BoxDecoration(
            color: itemDetailsModel.color, shape: BoxShape.circle),
      ),
      title: Text(
        itemDetailsModel.title,
        style: AppStyels.styleRegular16,
      ),
      trailing: Text(
        itemDetailsModel.value,
        style: AppStyels.styleMedium16,
      ),
    );
  }
}
