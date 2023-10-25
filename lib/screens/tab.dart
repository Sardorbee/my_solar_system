import 'package:cosmos_data/screens/favourite/favourite.dart';
import 'package:cosmos_data/screens/home_screen/home_page.dart';
import 'package:cosmos_data/utils/app_icons.dart';
import 'package:cosmos_data/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TabBoxScreen extends StatefulWidget {
  const TabBoxScreen({super.key});

  @override
  State<TabBoxScreen> createState() => _TabBoxScreenState();
}

class _TabBoxScreenState extends State<TabBoxScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            AppImages.bgImage,
            fit: BoxFit.fill,
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: IndexedStack(
            index: currentIndex,
            children: const [
              HomePage(),
              FavouriteScreen(),
            ],
          ),
          bottomNavigationBar: Opacity(
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
              child: BottomNavigationBar(
                selectedItemColor: const Color(0xff11DCE8),
                unselectedItemColor: Colors.white10,
                backgroundColor: Colors.transparent,
                items: [
                  BottomNavigationBarItem(
                      activeIcon: SvgPicture.asset(AppIcons.homeOn),
                      icon: SvgPicture.asset(AppIcons.homeOff),
                      label: "Home"),
                  BottomNavigationBarItem(
                      activeIcon: SvgPicture.asset(AppIcons.favouriteOn),
                      icon: SvgPicture.asset(AppIcons.favouriteOff),
                      label: "Favourite"),
                ],
                currentIndex: currentIndex,
                onTap: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
