import 'package:cached_network_image/cached_network_image.dart';
import 'package:my_system/data/models/planet_model.dart';
import 'package:my_system/utils/responsive_size.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PlanetOfTheDayWidget extends StatelessWidget {
  VoidCallback onTap;
  PlanetModel planetModel;
  PlanetOfTheDayWidget(
      {super.key, required this.onTap, required this.planetModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: responsibleSize(context: context, width: 300),
      height: responsibleSize(context: context, height: 219),
      child: Stack(
        children: [
          Opacity(
            opacity: 0.70,
            child: Container(
              decoration: ShapeDecoration(
                color: const Color(0xFF091422),
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
          Padding(
            padding:
                EdgeInsets.all(responsibleSize(context: context, width: 20)!),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  'Planet of the day',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Fig-tree',
                    fontWeight: FontWeight.w800,
                    height: 0.07,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CachedNetworkImage(
                      imageUrl: planetModel.image,
                      width: responsibleSize(context: context, width: 120)!,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          planetModel.name,
                          style: const TextStyle(
                            color: Color(0xFF11DCE8),
                            fontSize: 16,
                            fontFamily: 'Fig-tree',
                            fontWeight: FontWeight.w800,
                            height: 0.07,
                          ),
                        ), //mars
                        const SizedBox(height: 8),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                              width:
                                  responsibleSize(context: context, width: 120),
                              child: Text(
                                planetModel.description,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Fig-tree',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                            const SizedBox(height: 1),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: onTap,
                                  child: const Text(
                                    'Details',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontFamily: 'Figtree',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 6),
                                Container(
                                  width: 24,
                                  height: 24,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(),
                                  child: const Icon(
                                    Icons.arrow_right_alt_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
