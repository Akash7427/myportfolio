import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SizeConfigController extends GetxController {
  RxDouble screenWidth = 0.0.obs;
  RxDouble screenHeight = 0.0.obs;
  RxDouble blockSizeHorizontal = 0.0.obs;
  RxDouble blockSizeVertical = 0.0.obs;
  RxDouble _safeAreaHorizontal = 0.0.obs;
  RxDouble _safeAreaVertical = 0.0.obs;
  RxDouble safeBlockHorizontal = 0.0.obs;
  RxDouble safeBlockVertical = 0.0.obs;

  void init(BuildContext context) {
    MediaQueryData _mediaQueryData = MediaQuery.of(context);
    screenWidth.value = _mediaQueryData.size.width;
    screenHeight.value = _mediaQueryData.size.height;
    blockSizeHorizontal.value = screenWidth.value / 1920;
    blockSizeVertical.value = screenHeight.value / 1080;

    _safeAreaHorizontal.value =
        _mediaQueryData.padding.right + _mediaQueryData.padding.left;
    _safeAreaVertical.value =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    safeBlockHorizontal.value =
        (screenWidth.value - _safeAreaHorizontal.value) / 1920;
    safeBlockVertical.value =
        (screenHeight.value - _safeAreaVertical.value) / 1080;
  }
}
