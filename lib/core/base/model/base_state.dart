import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../constants/enums/device_type_enum.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T> {
  double dynamicTextSize(double fontSize) {
    // ignore: deprecated_member_use
    if (MediaQueryData.fromView(WidgetsBinding.instance.window).size.shortestSide > 600) {
      return fontSize.sp * 0.55;
    } else {
      return fontSize.sp * 0.88;
    }
  }

  double dynamicHeightPixel(double size) => size.h;
  double dynamicWidthPixel(double size) => size.w * 0.88;

  DeviceType getDeviceType() {
    // ignore: deprecated_member_use
    final data = MediaQueryData.fromView(WidgetsBinding.instance.window);
    return data.size.shortestSide < 600 ? DeviceType.phone : DeviceType.tablet;
  }

  isTablet() {
    // ignore: deprecated_member_use
    final data = MediaQueryData.fromView(WidgetsBinding.instance.window);
    return data.size.shortestSide < 600 ? false : true;
  }
}

class Utility {
  static double dynamicTextSize(double fontSize) {
    // ignore: deprecated_member_use
    if (MediaQueryData.fromView(WidgetsBinding.instance.window).size.shortestSide > 600) {
      return fontSize.sp * 0.55;
    } else {
      return fontSize.sp * 0.92;
    }
  }

  static double dynamicHeight(double size) => Get.height * size;
  static double dynamicWidth(double size) => Get.width * size;

  static double dynamicHeightPixel(double size) => size.h;
  static double dynamicWidthPixel(double size) {
    // ignore: deprecated_member_use
    if (MediaQueryData.fromView(WidgetsBinding.instance.window).size.shortestSide > 600) {
      return size.w * 0.55;
    } else {
      return size.w * 0.88;
    }
  }

  static DeviceType getDeviceType() {
    // ignore: deprecated_member_use
    final data = MediaQueryData.fromView(WidgetsBinding.instance.window);
    return data.size.shortestSide < 600 ? DeviceType.phone : DeviceType.tablet;
  }

  static isTablet() {
    // ignore: deprecated_member_use
    final data = MediaQueryData.fromView(WidgetsBinding.instance.window);
    return data.size.shortestSide < 600 ? false : true;
  }
}