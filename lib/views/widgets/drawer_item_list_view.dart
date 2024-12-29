import 'package:admin_dashboard/models/drawer_item_model.dart';
import 'package:admin_dashboard/utlis/app_images.dart';
import 'package:admin_dashboard/views/widgets/custom_drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({
    super.key,
  });

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  int activeIndex = 0;
  final List<DrawerItemModel> items = [
    const DrawerItemModel(img: Assets.imagesCategory2, title: "Dashboard"),
    const DrawerItemModel(
        img: Assets.imagesConvertCard, title: "My Transaction"),
    const DrawerItemModel(img: Assets.imagesGraph, title: "Statistics"),
    const DrawerItemModel(img: Assets.imagesWallet2, title: "Wallet Account"),
    const DrawerItemModel(img: Assets.imagesChart2, title: "My Investments"),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: CustomDrawerItem(
              drawerItemModel: items[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}
