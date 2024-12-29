import 'package:admin_dashboard/models/drawer_item_model.dart';
import 'package:admin_dashboard/utlis/styles.dart';
import 'package:admin_dashboard/views/widgets/active_and_inactive_drawer_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(
            drawerItemModel: drawerItemModel,
          )
        : InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}
