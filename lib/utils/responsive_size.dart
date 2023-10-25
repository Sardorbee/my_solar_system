import 'package:flutter/material.dart';

double? responsibleSize({
  double? height,
  double? width,
  required BuildContext context,
}) {
  double screenHeight = MediaQuery.of(context).size.height;
  double screenWidth = MediaQuery.of(context).size.width;

  double figmaDesignHeight = 812.0;
  double figmaDesignWidth = 375.0;

  double heightFactor = screenHeight / figmaDesignHeight;
  double widthFactor = screenWidth / figmaDesignWidth;

  if (height == null && width != null) {
    return width * widthFactor;
  } else if (width == null && height != null) {
    return height * heightFactor;
  } else {
    return null;
  }
}
