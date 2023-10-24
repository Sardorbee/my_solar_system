import 'package:flutter/material.dart';

void main() {
  runApp(const FigmaToCodeApp());
}

class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: const [
           Home(),
        ]),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Container(
      width: 375,
      height: 812,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: const Color(0xFF091422),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
        ),
      ),
      child: Stack(
        children: [
        Positioned(
        left: -0,
        top: 0,
        child: Container(
          width: 375,
          height: 812,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://via.placeholder.com/375x812"),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      Positioned(
        left: 0,
        top: 738,
        child: SizedBox(
          width: 375,
          height: 74,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Opacity(
                  opacity: 0.70,
                  child: Container(
                    width: 375,
                    height: 74,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF091422),
                      shape: RoundedRectangleBorder(
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
              Positioned(
                left: 53,
                top: 15,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 58,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 24,
                                  height: 24,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Transform(
                                        transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.57),
                                        child: Container(
                                          width: 20,
                                          height: 10,
                                          decoration: const ShapeDecoration(
                                            shape: OvalBorder(
                                              side: BorderSide(width: 2, color: Color(0xFF11DCE8)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Home',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontFamily: 'Figtree',
                              fontWeight: FontWeight.w600,
                              height: 0.12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 48),
                    SizedBox(
                      width: 58,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 24,
                                  height: 24,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(),
                                  child: const Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Favourites',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF8C8E99),
                              fontSize: 10,
                              fontFamily: 'Figtree',
                              fontWeight: FontWeight.w600,
                              height: 0.12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 48),
                    SizedBox(
                      width: 58,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 24,
                                  height: 24,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 6,
                                        height: 6,
                                        decoration: const ShapeDecoration(
                                          shape: OvalBorder(
                                            side: BorderSide(width: 2, color: Color(0xFF8C8E99)),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 6,
                                        height: 6,
                                        decoration: const ShapeDecoration(
                                          shape: OvalBorder(
                                            side: BorderSide(width: 2, color: Color(0xFF8C8E99)),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 6,
                                        height: 6,
                                        decoration: const ShapeDecoration(
                                          shape: OvalBorder(
                                            side: BorderSide(width: 2, color: Color(0xFF8C8E99)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'More',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF8C8E99),
                              fontSize: 10,
                              fontFamily: 'Figtree',
                              fontWeight: FontWeight.w600,
                              height: 0.12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Positioned(
        left: 0,
        top: 0,
        child: SizedBox(
          width: 375,
          height: 128,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Opacity(
                  opacity: 0.50,
                  child: Container(
                    width: 375,
                    height: 128,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF091422),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 2),
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
                left: 113,
                top: 76,
                child: Text(
                  'Solar System',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: 'Figtree',
                    fontWeight: FontWeight.w800,
                    height: 0.04,
                  ),
                ),
              ),
              const Positioned(
                left: 164,
                top: 57,
                child: Text(
                  'Milky Way',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF8C8E99),
                    fontSize: 10,
                    fontFamily: 'Figtree',
                    fontWeight: FontWeight.w400,
                    height: 0.20,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: SizedBox(
                  width: 375,
                  height: 44,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 284,
                        top: 17.67,
                        child: Container(
                          width: 17,
                          height: 10.67,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://via.placeholder.com/17x11"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 306,
                        top: 17.33,
                        child: Container(
                          width: 15.33,
                          height: 11,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://via.placeholder.com/15x11"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 326,
                        top: 17,
                        child: SizedBox(
                          width: 24.66,
                          height: 11,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Opacity(
                                  opacity: 0.35,
                                  child: Container(
                                    width: 22,
                                    height: 11,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(width: 1, color: Colors.white),
                                        borderRadius: BorderRadius.circular(2.67),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 2,
                                top: 2,
                                child: Container(
                                  width: 18,
                                  height: 7,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(1.33),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 7,
                        child: Container(
                          width: 54,
                          padding: const EdgeInsets.only(top: 6),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 54,
                                child: Text(
                                  '9:41',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Figtree',
                                    fontWeight: FontWeight.w400,
                                    height: 0.09,
                                    letterSpacing: -0.24,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 303,
                top: 62,
                child: SizedBox(
                  width: 48,
                  height: 48,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Opacity(
                          opacity: 0.50,
                          child: Container(
                            width: 48,
                            height: 48,
                            decoration: const ShapeDecoration(
                              color: Color(0xFF091422),
                              shape: OvalBorder(side: BorderSide(width: 2)),
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
                      ),
                      Positioned(
                        left: 12,
                        top: 12,
                        child: Container(
                          width: 24,
                          height: 24,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 9,
                                top: 8,
                                child: Container(
                                  width: 6,
                                  height: 6,
                                  decoration: const ShapeDecoration(
                                    shape: OvalBorder(
                                      side: BorderSide(
                                        width: 2,
                                        strokeAlign: BorderSide.strokeAlignCenter,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 2,
                                top: 2,
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  decoration: const ShapeDecoration(
                                    shape: OvalBorder(
                                      side: BorderSide(width: 2, color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 24,
                top: 62,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 48,
                      height: 48,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Opacity(
                              opacity: 0.50,
                              child: Container(
                                width: 48,
                                height: 48,
                                decoration: const ShapeDecoration(
                                  color: Color(0xFF091422),
                                  shape: OvalBorder(side: BorderSide(width: 2)),
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
                          ),
                          Positioned(
                            left: 12,
                            top: 12,
                            child: Container(
                              width: 24,
                              height: 24,
                              padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 6),
                              clipBehavior: Clip.antiAlias,
                              decoration: const BoxDecoration(),
                              child: const Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 18,
                                    height: 12,
                                    child: Stack(children: [

                                        ]),
                                  ),
                                ],
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
          ),
        ),
      ),
      Positioned(
        left: 24,
        top: 148,
        child: SizedBox(
          width: 351,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
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
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x9909141E),
                            blurRadius: 16,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          ),BoxShadow(
                            color: Color(0x26000000),
                            blurRadius: 1,
                            offset: Offset(0, 2),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 24,
                              height: 24,
                              decoration: const ShapeDecoration(
                                color: Color(0xFFD9D9D9),
                                shape: OvalBorder(),
                              ),
                            ),
                          ),
                          Positioned(
                            left: -1.80,
                            top: -1.80,
                            child: Container(
                              width: 27.60,
                              height: 27.60,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("https://via.placeholder.com/28x28"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 24,
                              height: 24,
                              decoration: const ShapeDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(-0.69, -0.72),
                                  end: Alignment(0.69, 0.72),
                                  colors: [Color(0xFF00E5E5), Color(0xFF72A4F1), Color(0xFFE860FF)],
                                ),
                                shape: OvalBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Mercury',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Figtree',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              Container(
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
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x9909141E),
                            blurRadius: 16,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          ),BoxShadow(
                            color: Color(0x26000000),
                            blurRadius: 1,
                            offset: Offset(0, 2),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 24,
                              height: 24,
                              decoration: const ShapeDecoration(
                                color: Color(0xFFD9D9D9),
                                shape: OvalBorder(),
                              ),
                            ),
                          ),
                          Positioned(
                            left: -1.80,
                            top: -1.80,
                            child: Container(
                              width: 27.60,
                              height: 27.60,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("https://via.placeholder.com/28x28"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 24,
                              height: 24,
                              decoration: const ShapeDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(-0.69, -0.72),
                                  end: Alignment(0.69, 0.72),
                                  colors: [Color(0xFF00E5E5), Color(0xFF72A4F1), Color(0xFFE860FF)],
                                ),
                                shape: OvalBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Venus',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Figtree',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              Container(
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
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x9909141E),
                            blurRadius: 16,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          ),BoxShadow(
                            color: Color(0x26000000),
                            blurRadius: 1,
                            offset: Offset(0, 2),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 24,
                              height: 24,
                              decoration: const ShapeDecoration(
                                color: Color(0xFFD9D9D9),
                                shape: OvalBorder(),
                              ),
                            ),
                          ),
                          Positioned(
                            left: -1.80,
                            top: -1.80,
                            child: Container(
                              width: 27.60,
                              height: 27.60,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("https://via.placeholder.com/28x28"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 24,
                              height: 24,
                              decoration: const ShapeDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(-0.69, -0.72),
                                  end: Alignment(0.69, 0.72),
                                  colors: [Color(0xFF00E5E5), Color(0xFF72A4F1), Color(0xFFE860FF)],
                                ),
                                shape: OvalBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Earth',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Figtree',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              Container(
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
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x9909141E),
                            blurRadius: 16,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          ),BoxShadow(
                            color: Color(0x26000000),
                            blurRadius: 1,
                            offset: Offset(0, 2),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 24,
                              height: 24,
                              decoration: const ShapeDecoration(
                                color: Color(0xFFD9D9D9),
                                shape: OvalBorder(),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 24,
                              height: 24,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("https://via.placeholder.com/24x24"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 24,
                              height: 24,
                              decoration: const ShapeDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(-0.69, -0.72),
                                  end: Alignment(0.69, 0.72),
                                  colors: [Color(0xFF00E5E5), Color(0xFF72A4F1), Color(0xFFE860FF)],
                                ),
                                shape: OvalBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Earth',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Figtree',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Positioned(
        left: 24,
        top: 220,
        child: SizedBox(
          width: 327,
          height: 219,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Opacity(
                  opacity: 0.70,
                  child: Container(
                    width: 327,
                    height: 219,
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
              Positioned(
                left: 26,
                top: 59,
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x9909141E),
                        blurRadius: 16,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      ),BoxShadow(
                        color: Color(0x26000000),
                        blurRadius: 1,
                        offset: Offset(0, 2),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFD9D9D9),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://via.placeholder.com/60x60"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: const ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(-0.69, -0.72),
                              end: Alignment(0.69, 0.72),
                              colors: [Color(0xFF00E5E5), Color(0xFF72A4F1), Color(0xFFE860FF)],
                            ),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 24,
                top: 21,
                child: Text(
                  'Planet of the day',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Figtree',
                    fontWeight: FontWeight.w800,
                    height: 0.07,
                  ),
                ),
              ),
              Positioned(
                left: 98,
                top: 59,
                child: SizedBox(
                  width: 200,
                  height: 141,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Mars',
                        style: TextStyle(
                          color: Color(0xFF11DCE8),
                          fontSize: 16,
                          fontFamily: 'Figtree',
                          fontWeight: FontWeight.w800,
                          height: 0.07,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const SizedBox(
                            width: 200,
                            height: 83,
                            child: Text(
                              'Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, only being larger than Mercury. In the English language, Mars is named for the Roman god of war.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'Figtree',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                'Details',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Figtree',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                              const SizedBox(width: 4),
                              Container(
                                width: 24,
                                height: 24,
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(),
                                child: const Stack(children: [

                                    ]),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Positioned(
        left: 24,
        top: 465,
        child: SizedBox(
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
                'The Solar System[c] is the gravitationally bound system of the Sun and the objects that orbit it. It formed 4.6 billion years ago from the gravitational collapse of a giant interstellar molecular cloud. The vast majority (99.86%) of the systems mass is in the Sun, with most of the remaining mass contained in the planet Jupiter. The four inner system planets—Mercury, Venus, Earth and Mars—are terrestrial planets, being composed primarily of rock and metal. The four giant planets of the outer system are substantially larger and more massive than the terrestrials. ',
              style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontFamily: 'Figtree',
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
              fontFamily: 'Figtree',
              fontWeight: FontWeight.w800,
              height: 0.07,
            ),
          ),
        ),
        ],
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