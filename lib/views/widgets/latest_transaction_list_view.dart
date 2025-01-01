import 'package:admin_dashboard/models/user_info_model.dart';
import 'package:admin_dashboard/utlis/app_images.dart';
import 'package:admin_dashboard/views/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class LatesTransactionListView extends StatelessWidget {
  const LatesTransactionListView({super.key});
  static const users = [
    UserInfoModel(
        img: Assets.imagesFrame,
        title: "Madrani Andi",
        subTitle: "Madraniadi20@gmail"),
    UserInfoModel(
        img: Assets.imagesFrame1,
        title: "Josua Nunito",
        subTitle: "Josh Nunito@gmail.com"),
    UserInfoModel(
        img: Assets.imagesFrame2,
        title: "Madrani Andi",
        subTitle: "Madraniadi20@gmail"),
  ];
  @override
  Widget build(BuildContext context) {
    // used this in case of few num of widget building
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: users
              .map((e) => IntrinsicWidth(
                    child: UserInfoListTile(
                      userModel: e,
                    ),
                  ))
              .toList()),
    );

    // used this in case of many widget building

    // return SizedBox(
    //   height: 75,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: users.length,
    //     itemBuilder: (context, index) {
    //       return IntrinsicWidth(
    //         child: UserInfoListTile(
    //           userModel: users[index],
    //         ),
    //       );
    //     },
    //   ),
    // );
  }
}
