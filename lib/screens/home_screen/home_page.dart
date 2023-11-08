import 'dart:math';

import 'package:my_system/bloc/planet_bloc/planet_bloc.dart';
import 'package:my_system/data/models/planet_model.dart';
import 'package:my_system/screens/detail_screen/detail_page.dart';
import 'package:my_system/screens/home_screen/widgets/blocFeatures_item.dart';
import 'package:my_system/screens/home_screen/widgets/block_text.dart';
import 'package:my_system/screens/home_screen/widgets/custom_appbar.dart';
import 'package:my_system/screens/home_screen/widgets/custom_planetItem.dart';
import 'package:my_system/screens/splash/widgets/circular_animation.dart';
import 'package:my_system/utils/app_icons.dart';
import 'package:my_system/utils/app_images.dart';
import 'package:my_system/utils/responsive_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: BlocBuilder<PlanetBloc, PlanetBlocState>(
        builder: (context, state) {
          if (state.planets.isEmpty) {
            return const Center(
              child: CircularSplash(strokeWidth: 4),
            );
          }

          int randomPlanets = Random().nextInt(state.planets.length);

          PlanetModel randomPlanet = state.planets[randomPlanets];

          return Column(
            children: [
              const CustomAppBar(
                action: AppIcons.favouriteOff,
                centerTitle: true,
                title: 'Solar System',
                leading: AppIcons.settings,
              ),
              SizedBox(
                height: responsibleSize(context: context, height: 100),
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: state.planets.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                responsibleSize(context: context, width: 12)!,
                            vertical:
                                responsibleSize(context: context, height: 20)!),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (builder) => DetailPage(
                                planet: state.planets[index],
                              ),
                            ),
                          ),
                          child: CustomPlanetItem(
                            name: state.planets[index].name,
                            images: state.planets[index].image,
                          ),
                        ),
                      );
                    }),
              ),
              PlanetOfTheDayWidget(
                planetModel: randomPlanet,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => DetailPage(
                                planet: randomPlanet,
                              )));
                },
              ),
              SizedBox(
                height: responsibleSize(context: context, height: 26),
              ),
              const BlockText()
            ],
          );
        },
      ),
    );
  }
}
