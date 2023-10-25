import 'package:flutter/material.dart';

double? responsibleSize({
  double? height,
  double? width,
  required BuildContext context,
}) {
  double screenHeight = MediaQuery.of(context).size.height/100;
  double screenWidth = MediaQuery.of(context).size.width/100;
  print("============${screenHeight}      ${screenWidth}==================");

  double figmaDesignHeight = 812.0/100;
  double figmaDesignWidth = 375.0/100;

  if (height == null && width != null) {
    double widthFactor = width / figmaDesignWidth;

    return screenWidth * widthFactor;
  } else if (width == null && height != null) {
    double heightFactor = height / figmaDesignHeight ;

    return screenHeight * heightFactor;
  } else {
    return null;
  }
}
