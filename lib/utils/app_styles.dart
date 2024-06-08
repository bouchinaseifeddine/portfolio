import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';

abstract class AppStyles {
  static double _getScalingFactor(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth > 600) {
      return 1.0;
    } else if (screenWidth > 400) {
      return 0.9;
    } else {
      return 0.8;
    }
  }

  static TextStyle styleMedium26(BuildContext context) {
    double scalingFactor = _getScalingFactor(context);
    return TextStyle(
      color: Colors.white,
      fontSize: 26 * scalingFactor,
      fontFamily: kPoppins,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold32(BuildContext context) {
    double scalingFactor = _getScalingFactor(context);
    return TextStyle(
      color: Colors.white,
      fontSize: 32 * scalingFactor,
      fontFamily: kPoppins,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleBold24(BuildContext context) {
    double scalingFactor = _getScalingFactor(context);
    return TextStyle(
      color: Colors.white,
      fontSize: 24 * scalingFactor,
      fontFamily: kPoppins,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleBold15(BuildContext context) {
    double scalingFactor = _getScalingFactor(context);
    return TextStyle(
      color: Colors.white,
      fontSize: 15 * scalingFactor,
      fontFamily: kPoppins,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleNormal15(BuildContext context) {
    double scalingFactor = _getScalingFactor(context);
    return TextStyle(
      color: kPrimaryColor,
      fontSize: 15 * scalingFactor,
      fontFamily: kPoppins,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleLight15(BuildContext context) {
    double scalingFactor = _getScalingFactor(context);
    return TextStyle(
      color: kLightGrayColor,
      fontSize: 15 * scalingFactor,
      fontFamily: kPoppins,
      fontWeight: FontWeight.w300,
    );
  }
}
