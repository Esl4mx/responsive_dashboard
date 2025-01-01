import 'package:admin_dashboard/utlis/app_images.dart';
import 'package:admin_dashboard/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage(Assets.imagesCardBackground2)),
            color: const Color(0xff4EB7F2),
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.only(left: 31, right: 42, top: 16),
              title: Text(
                "Name Card",
                style: AppStyels.styleRegular16.copyWith(color: Colors.white),
              ),
              subtitle: const Text(
                "Syah Bani",
                style: AppStyels.styleMedium20,
              ),
              trailing: SvgPicture.asset(Assets.imagesCardIcon),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Column(
                children: [
                  Text(
                    "0918 8124 0042 8129",
                    style:
                        AppStyels.styleSemibold24.copyWith(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    "12 /20 - 124",
                    style:
                        AppStyels.styleRegular16.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
