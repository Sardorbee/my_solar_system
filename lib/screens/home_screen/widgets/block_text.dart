import 'package:flutter/material.dart';

class BlockText extends StatelessWidget {
  const BlockText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 327,
          height: 249,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Opacity(
                  opacity: 0.70,
                  child: Container(
                    width: 327,
                    height: 249,
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
              ),
              const Positioned(
                left: 26,
                top: 55,
                child: SizedBox(
                  width: 272,
                  height: 168,
                  child: Text(
                    'The Solar System[c] is the gravitationally bound system of the Sun and the objects that orbit it. It formed 4.6 billion years ago from the gravitational collapse of a giant interstellar molecular cloud. The vast majority (99.86%) of the system\'s mass is in the Sun, with most of the remaining mass contained in the planet Jupiter. The four inner system planets—Mercury, Venus, Earth and Mars—are terrestrial planets, being composed primarily of rock and metal. The four giant planets of the outer system are substantially larger and more massive than the terrestrials. ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Fig tree',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 24,
                top: 21,
                child: Text(
                  'Solar System',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Fig-tree',
                    fontWeight: FontWeight.w800,
                    height: 0.07,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
