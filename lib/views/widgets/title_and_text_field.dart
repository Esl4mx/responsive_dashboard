import 'package:admin_dashboard/utlis/styles.dart';
import 'package:admin_dashboard/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class TitleAndTextField extends StatelessWidget {
  const TitleAndTextField(
      {super.key, required this.title, required this.hintText});
  final String title, hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyels.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextField(
          hintText: hintText,
        )
      ],
    );
  }
}
