import 'package:admin_dashboard/utlis/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, this.backGrounColor, this.textColor, required this.title});

  final Color? backGrounColor, textColor;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              elevation: 0,
              backgroundColor: backGrounColor ?? const Color(0xff4EB7F2)),
          onPressed: () {},
          child: Text(
            title,
            style:
                AppStyels.styleSemibold18(context).copyWith(color: textColor),
          )),
    );
  }
}
