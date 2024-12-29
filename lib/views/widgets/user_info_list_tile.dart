import 'package:admin_dashboard/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.img,
    required this.title,
    required this.subTitle,
  });

  final String img, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xffFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(img),
        title: Text(
          title,
          style: AppStyels.styleSemiBold16,
        ),
        subtitle: Text(
          subTitle,
          style: AppStyels.styleRegular12,
        ),
      ),
    );
  }
}
