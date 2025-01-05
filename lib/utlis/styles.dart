import 'package:admin_dashboard/utlis/size_config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

abstract class AppStyels {
  static TextStyle styleRegular16(context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontSize: getResponsiveFontsize(context, fontsize: 16),
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleMedium16(context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontSize: getResponsiveFontsize(context, fontsize: 16),
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold16(context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontSize: getResponsiveFontsize(context, fontsize: 16),
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemibold20(context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontSize: getResponsiveFontsize(context, fontsize: 20),
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular12(context) {
    return TextStyle(
      color: const Color(0xffAAAAAA),
      fontSize: getResponsiveFontsize(context, fontsize: 12),
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemibold24(context) {
    return TextStyle(
      color: const Color(0xff4EB7F2),
      fontSize: getResponsiveFontsize(context, fontsize: 24),
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular14(context) {
    return TextStyle(
      color: const Color(0xffAAAAAA),
      fontSize: getResponsiveFontsize(context, fontsize: 14),
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemibold18(context) {
    return TextStyle(
      color: const Color(0xffFFFFFF),
      fontSize: getResponsiveFontsize(context, fontsize: 18),
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleBold16(context) {
    return TextStyle(
      color: const Color(0xff4EB7F2),
      fontSize: getResponsiveFontsize(context, fontsize: 16),
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleMedium20(context) {
    return TextStyle(
      color: const Color(0xffFFFFFF),
      fontSize: getResponsiveFontsize(context, fontsize: 20),
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w500,
    );
  }
}

double getResponsiveFontsize(BuildContext context, {required double fontsize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontsize * scaleFactor;
  double lowerLimit = fontsize * 0.8;
  double upperLimit = fontsize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
