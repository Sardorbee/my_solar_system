import 'package:my_system/bloc/planet_bloc/planet_bloc.dart';
import 'package:my_system/screens/all_planets/widgets/planets_appbar.dart';
import 'package:my_system/screens/detail_screen/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_system/utils/responsive_size.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          const CustomAppBarAllPlanets(
            title: "All Planets",
          ),
          Expanded(
            child: BlocBuilder<PlanetBloc, PlanetBlocState>(
              builder: (context, state) {
                if (state.planets.isEmpty) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                return ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: state.planets.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            Opacity(
                              opacity: 0.7,
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.08,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 14, vertical: 12),
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
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: responsibleSize(
                                      context: context, height: 6)!),
                              child: ListTile(
                                onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailPage(
                                        planet: state.planets[index]),
                                  ),
                                ),
                                tileColor: Colors.transparent,
                                style: ListTileStyle.list,
                                title: Text(
                                  state.planets[index].name,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                trailing: const Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.white,
                                ),
                                leading: Image.network(
                                  state.planets[index].image,
                                  height:
                                      MediaQuery.of(context).size.height * 0.07,
                                  width:
                                      MediaQuery.of(context).size.height * 0.07,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    });
              },
            ),
          )
        ],
      ),
    );
  }
}
