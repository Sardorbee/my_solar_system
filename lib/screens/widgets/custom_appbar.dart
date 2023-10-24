import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSize {
  const CustomAppBar({
    Key? key,
    this.onTap,
    this.action,
    this.centerTitle,
    this.title = "",  this.leading,
  }) : super(key: key);

  final VoidCallback? onTap;
  final String title;
  final List<Widget>? action;
  final bool? centerTitle;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(
          opacity: 0.5,

          child: Container(
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
        AppBar(
          backgroundColor: Colors.transparent,
          scrolledUnderElevation: 0,
          actions: action,
          elevation: 0,
          centerTitle: centerTitle,
          leading: leading,

          title: title.isNotEmpty
              ? Text(title,
            style: GoogleFonts.figtree(
              textStyle:const  TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.normal,
                fontSize: 24,
                fontWeight: FontWeight.w800,
              ),
            ),
          )
              : null,
        ),
      ],
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size(double.infinity, 84);
}
