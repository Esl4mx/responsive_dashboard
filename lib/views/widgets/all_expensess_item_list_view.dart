import 'package:admin_dashboard/models/all_expensess_item_header_model.dart';
import 'package:admin_dashboard/utlis/app_images.dart';
import 'package:admin_dashboard/views/widgets/all_expensess_item.dart';
import 'package:flutter/material.dart';

class AllExpensessItemListView extends StatefulWidget {
  const AllExpensessItemListView({super.key});

  @override
  State<AllExpensessItemListView> createState() =>
      _AllExpensessItemListViewState();
}

class _AllExpensessItemListViewState extends State<AllExpensessItemListView> {
  final List<AllExpensessItemHeaderModel> itemModel = [
    const AllExpensessItemHeaderModel(
        image: Assets.imagesMoneys,
        title: "Balance",
        date: "April 2022",
        price: r"$20,129"),
    const AllExpensessItemHeaderModel(
        image: Assets.imagesCardReceive,
        title: "Income",
        date: "April 2022",
        price: r"$20,129"),
    const AllExpensessItemHeaderModel(
        image: Assets.imagesCardSend,
        title: "Expensess",
        date: "April 2022",
        price: r"$20,129"),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
        // children: itemModel
        //     .map((e) => Expanded(child: AllExpensessItem(itemModel: e)))
        //     .toList(),
        children: itemModel.asMap().entries.map(
      (e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                updateIndex(index);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: AllExpensessItem(
                  itemModel: item,
                  isSelected: selectedIndex == index,
                ),
              ),
            ),
          );
        } else {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                updateIndex(index);
              },
              child: AllExpensessItem(
                itemModel: item,
                isSelected: selectedIndex == index,
              ),
            ),
          );
        }
      },
    ).toList());
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
