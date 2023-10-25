import 'package:cosmos_data/screens/home_screen/widgets/blocFeatures_item.dart';
import 'package:cosmos_data/screens/home_screen/widgets/block_text.dart';
import 'package:cosmos_data/screens/home_screen/widgets/custom_appbar.dart';
import 'package:cosmos_data/screens/home_screen/widgets/custom_planetItem.dart';

import 'package:cosmos_data/utils/app_icons.dart';
import 'package:cosmos_data/utils/app_images.dart';
import 'package:cosmos_data/utils/responsive_size.dart';
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
              SizedBox(
                height: responsibleSize(context: context, height: 100),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: AppImages.listImages.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 20),
                        child: CustomPlanetItem(
                          name: AppImages.listNames[index],
                          images: AppImages.listImages[index],
                        ),
                      );
                    }),
              ),
              const BlockFeatured(),
              const SizedBox(
                height: 26,
              ),
              const BlockText()
            ],
          ),
        ),
      ],
    );
  }
}
