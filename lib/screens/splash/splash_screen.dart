import 'package:flutter/material.dart';
import 'package:my_system/screens/splash/widgets/circular_animation.dart';
import 'package:my_system/screens/tab.dart';
import 'package:my_system/utils/app_images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3))
        .then((value) => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => const TabBoxScreen(),
            ),
            (route) => false));
    super.initState();
  }

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
            body: Center(
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height / 3,
                      width: MediaQuery.of(context).size.height / 3,
                      child: const CircularSplash(),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(AppImages.logo, width: MediaQuery.of(context).size.height / 3.7,),
                  )
                ],
              ),
            )),
      ],
    );
  }
}
