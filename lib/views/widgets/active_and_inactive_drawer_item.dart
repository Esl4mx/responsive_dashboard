import 'package:admin_dashboard/models/drawer_item_model.dart';
import 'package:admin_dashboard/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.img),
      title: Text(
        overflow: TextOverflow.ellipsis,
        drawerItemModel.title,
        style: AppStyels.styleRegular16(
          context,
        ),
      ),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.img),
      trailing: Container(
        width: 3.27,
        color: const Color(0xff4EB7F2),
      ),
      title: Text(
        overflow: TextOverflow.ellipsis,
        drawerItemModel.title,
        style: AppStyels.styleBold16(context),
      ),
    );
  }
}
