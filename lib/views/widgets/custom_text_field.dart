import 'package:admin_dashboard/utlis/styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintStyle: AppStyels.styleRegular16(context)
              .copyWith(color: const Color(0xffAAAAAA)),
          hintText: hintText,
          filled: true,
          fillColor: const Color(0xffFAFAFA),
          border: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xffFAFAFA)),
              borderRadius: BorderRadius.circular(12)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Color(0xffFAFAFA)))),
    );
  }
}
