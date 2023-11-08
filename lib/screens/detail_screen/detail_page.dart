import 'package:my_system/data/models/planet_model.dart';
import 'package:my_system/screens/detail_screen/widgets/custom_appbar_detail.dart';
import 'package:my_system/screens/detail_screen/widgets/detail_parametr_item.dart';
import 'package:my_system/utils/app_icons.dart';
import 'package:my_system/utils/responsive_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatelessWidget {
  final PlanetModel planet;
  const DetailPage({super.key, required this.planet});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 180,
          left: -100,
          child: Transform.scale(
            scale: 1.6,
            child: Image.network(
              planet.image,
              scale: 1,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomAppBarDetail(
                    action: AppIcons.favouriteOff,
                    centerTitle: true,
                    leading: AppIcons.arrowBack,
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Opacity(
                        opacity: 0.7,
                        child: Container(
                          width: responsibleSize(context: context, width: 375),
                          height:
                              responsibleSize(context: context, height: 600),
                          decoration: const ShapeDecoration(
                            color: Color(0xFF091422),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(28),
                                  topRight: Radius.circular(28)),
                            ),
                            shadows: [
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
                      DetailParamItem(planet: planet),
                    ],
                  ),
                ],
              ),
              Positioned(
                left: MediaQuery.of(context).size.width / 3.3,
                top: MediaQuery.of(context).size.height / 5,
                child: Column(
                  children: [
                    Image.network(
                      planet.image,
                      scale: 3.5,
                    ),
                    Text(
                      planet.name,
                      style: GoogleFonts.figtree(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.normal,
                          fontSize: 32,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
