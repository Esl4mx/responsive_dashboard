import 'package:flutter/material.dart';

class SizeConfig {
  static const double desktop = 1285;
  static const double tablet = 800;

  static late double width, height;

  static init(BuildContext context) {
    width = MediaQuery.sizeOf(context).width;
    height = MediaQuery.sizeOf(context).height;
  }
}
