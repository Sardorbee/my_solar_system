import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBarDetail extends StatelessWidget {
  const CustomAppBarDetail({
    Key? key,
    this.onTap,
    this.action,
    this.centerTitle,
    required this.leading,
  }) : super(key: key);

  final VoidCallback? onTap;
  final String? action;
  final bool? centerTitle;
  final String leading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * 0.07,
        horizontal: MediaQuery.of(context).size.height * 0.043,
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Opacity(
              opacity: 0.3,
              child: Container(
                height: 44,
                width: 44,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Colors.white60,
                  shadows: const [
                    BoxShadow(
                      color: Colors.white,
                      blurRadius: 16,
                      offset: Offset(0, -4),
                      spreadRadius: 0,
                    )
                  ],
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1.5,color: Colors.white),
                    borderRadius: BorderRadius.circular(28),
                  ),
                ),
              ),
            ),
            Center(child: SvgPicture.asset(leading)),
          ],
        ),
        Visibility(
          visible: action?.isNotEmpty ?? false,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Opacity(
                opacity: 0.3,
                child: Container(
                  height: 44,
                  width: 44,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Colors.white60,
                    shadows: const [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 16,
                        offset: Offset(0, -4),
                        spreadRadius: 0,
                      )
                    ],
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1.5,color: Colors.white),
                      borderRadius: BorderRadius.circular(28),
                    ),
                  ),
                ),
              ),
              Center(
                  child: SvgPicture.asset(
                action!,
                colorFilter:
                    const ColorFilter.mode(Colors.white, BlendMode.srcIn),
              )),
            ],
          ),
        ),
      ]),
    );
  }
}
