import 'package:cosmos_data/screens/widgets/custom_appbar.dart';
import 'package:cosmos_data/screens/widgets/ex.dart';
import 'package:cosmos_data/utils/app_icons.dart';
import 'package:cosmos_data/utils/app_images.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          body: Column(
            children: [
              const CustomAppBar(
                action: AppIcons.profile,
                centerTitle: true,
                title: 'Solar System',
                leading: AppIcons.settings,
              ),
              Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 20),
                        child: CustomPlanetItem(),
                      );
                    }),
              )
            ],
          ),
        ),
      ],
    );
  }
}
