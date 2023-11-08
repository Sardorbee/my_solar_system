import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBarAllPlanets extends StatelessWidget {
  const CustomAppBarAllPlanets({
    Key? key,
    this.onTap,
    this.action,
    this.centerTitle,
    this.title = "",
  }) : super(key: key);

  final VoidCallback? onTap;
  final String title;
  final String? action;
  final bool? centerTitle;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(
          opacity: 0.5,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.13,
            // clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: const Color(0xFF091422),
              shadows: const [
                BoxShadow(
                  color: Color(0xFF000000),
                  blurRadius: 16,
                  offset: Offset(0, -4),
                  spreadRadius: 0,
                )
              ],
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 2),
                borderRadius: BorderRadius.circular(28),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.07,
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Text(
              title,
              style: GoogleFonts.figtree(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.normal,
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
