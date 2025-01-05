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
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensessItem(
              itemModel: itemModel[0],
              isSelected: selectedIndex == 0,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpensessItem(
              itemModel: itemModel[1],
              isSelected: selectedIndex == 1,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpensessItem(
              itemModel: itemModel[2],
              isSelected: selectedIndex == 2,
            ),
          ),
        )
      ],
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}

// return Row(
    //     // children: itemModel
    //     //     .map((e) => Expanded(child: AllExpensessItem(itemModel: e)))
    //     //     .toList(),
    //     children: itemModel.asMap().entries.map(
    //   (e) {
    //     int index = e.key;
    //     var item = e.value;
    //     return Expanded(
    //       child: GestureDetector(
    //         onTap: () {
    //           updateIndex(index);
    //         },
    //         child: Padding(
    //           padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
    //           child: AllExpensessItem(
    //             itemModel: item,
    //             isSelected: selectedIndex == index,
    //           ),
    //         ),
    //       ),
    //     );
    //   },
    // ).toList());