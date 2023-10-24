import 'package:cosmos_data/screens/widgets/custom_appbar.dart';
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
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,

          child: Image.asset(AppImages.bgImage,fit: BoxFit.fill,),
        ),
       const Scaffold(
          backgroundColor: Colors.transparent,
          appBar: CustomAppBar(
            title: 'Solar System',
          ),
        ),
      ],
    );
  }
}
