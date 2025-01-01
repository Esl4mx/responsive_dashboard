import 'package:admin_dashboard/utlis/styles.dart';
import 'package:flutter/material.dart';

class OptionsRange extends StatelessWidget {
  const OptionsRange({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: const Color(0xffF1F1F1)),
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          const Text(
            "Monthly",
            style: AppStyels.styleMedium16,
          ),
          const SizedBox(
            width: 18,
          ),
          Transform.rotate(
            angle: -1.57079633,
            child: const Icon(
              color: Color(0xff064061),
              Icons.arrow_back_ios_new_rounded,
            ),
          )
        ],
      ),
    );
  }
}
