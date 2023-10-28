import 'package:cosmos_data/utils/responsive_size.dart';
import 'package:flutter/material.dart';

class CustomPlanetItem extends StatelessWidget {
  const CustomPlanetItem({super.key, required this.name, required this.images});
  final String name;
  final String images;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Opacity(
          opacity: 0.5,
          child: Container(
            width: responsibleSize(context: context, width: 95),
            height: responsibleSize(context: context, height: 48),
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: const Color(0xCC091422),
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1),
                borderRadius: BorderRadius.circular(28),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0xFF000000),
                  blurRadius: 16,
                  offset: Offset(0, -4),
                  spreadRadius: 0,
                )
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(images,height: MediaQuery.of(context).size.height * 0.033,),
            const SizedBox(width: 8),
             Text(
              name,
              style:  TextStyle(
                color: Colors.white,
                fontSize: responsibleSize(context: context, height: 15),
                fontFamily: 'Fig-tree',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
