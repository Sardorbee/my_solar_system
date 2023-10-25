import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    this.onTap,
    this.action,
    this.centerTitle,
    this.title = "",
    required this.leading,
  }) : super(key: key);

  final VoidCallback? onTap;
  final String title;
  final String? action;
  final bool? centerTitle;
  final String leading;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(
          opacity: 0.5,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.1576,
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
            Stack(
              alignment: Alignment.center,
              children: [
                Opacity(
                  opacity: 0.5,
                  child: Container(
                    height: 44,
                    width: 44,
                    clipBehavior: Clip.antiAlias,
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
                Center(child: SvgPicture.asset(leading)),
              ],
            ),
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
            Visibility(
              visible: action?.isNotEmpty ?? false,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: Container(
                      height: 44,
                      width: 44,
                      clipBehavior: Clip.antiAlias,
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
                  Center(child: SvgPicture.asset(action!)),
                ],
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
