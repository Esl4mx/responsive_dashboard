import 'package:admin_dashboard/models/drawer_item_model.dart';
import 'package:admin_dashboard/utlis/app_images.dart';
import 'package:admin_dashboard/views/widgets/active_and_inactive_drawer_item.dart';
import 'package:admin_dashboard/views/widgets/drawer_item_list_view.dart';
import 'package:admin_dashboard/views/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
                img: Assets.imagesFrame2,
                title: "Eslam Saied",
                subTitle: "Esl4mx@gmail.com"),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: "Setting sysyem",
                    img: Assets.imagesSetting2,
                  ),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: "Logout account",
                    img: Assets.imagesLogout,
                  ),
                ),
                SizedBox(
                  height: 48,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}