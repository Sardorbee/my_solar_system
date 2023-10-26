import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OneParamItem extends StatelessWidget {
  String icon;
  String title;
  String subtitle;
  String dataText;
  OneParamItem({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.dataText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          icon,
          width: 48,
        ),
         Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontFamily: 'Fig-tree',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
         Text(
          subtitle,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontFamily: 'Figtree',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
         Text(
          dataText,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontFamily: 'Figtree',
            fontWeight: FontWeight.w800,
            height: 0,
          ),
        ),
      ],
    );
  }
}
