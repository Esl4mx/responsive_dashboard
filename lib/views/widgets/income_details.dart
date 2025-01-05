import 'package:admin_dashboard/models/item_details_model.dart';
import 'package:admin_dashboard/utlis/styles.dart';
import 'package:admin_dashboard/views/widgets/income_items_details.dart';
import 'package:flutter/material.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    ItemDetailsModel(
        color: Color(0xff208CC8), title: "Design service", value: "40%"),
    ItemDetailsModel(
        color: Color(0xff4EB7F2), title: "Design product", value: "25%"),
    ItemDetailsModel(
        color: Color(0xff064061), title: "Product royalti", value: "20%"),
    ItemDetailsModel(color: Color(0xffE2DECD), title: "Other", value: "22%"),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map(
            (e) => IncomeItemDeatils(itemDetailsModel: e),
          )
          .toList(),
    );
  }
}

// ListView.builder(
//       shrinkWrap: true,
//       itemCount: items.length,
//       itemBuilder: (context, index) {
//         return IncomeItemDeatils(itemDetailsModel: items[index]);
//       },
//     );