import 'package:cosmos_data/screens/detail_screen/widgets/one_param_item.dart';
import 'package:cosmos_data/utils/app_icons.dart';
import 'package:cosmos_data/utils/responsive_size.dart';
import 'package:flutter/material.dart';

class DetailParamItem extends StatelessWidget {
  const DetailParamItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height > 800
              ? responsibleSize(context: context, height: 90)
              : responsibleSize(context: context, height: 120),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            OneParamItem(
              icon: AppIcons.mass,
              title: 'Mass',
              subtitle: '(1024kg)',
              dataText: '5.97',
            ),
            OneParamItem(
              icon: AppIcons.gravity,
              title: 'Gravity',
              subtitle: '(m/s2)',
              dataText: '9.8',
            ),
            OneParamItem(
              icon: AppIcons.day,
              title: 'Day',
              subtitle: '(hours)',
              dataText: '24',
            ),
          ],
        ),
        SizedBox(
          height: responsibleSize(context: context, height: 34),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            OneParamItem(
              icon: AppIcons.velocity,
              title: ' Esc. Velocity ',
              subtitle: '(km/s)',
              dataText: '11.2',
            ),
            OneParamItem(
              icon: AppIcons.temprature,
              title: 'Mean',
              subtitle: 'Temp (C)',
              dataText: '15',
            ),
            OneParamItem(
              icon: AppIcons.distance,
              title: 'Distance from',
              subtitle: 'Sun (106 km)',
              dataText: '5.97',
            ),
          ],
        ),
        SizedBox(
          height: responsibleSize(context: context, height: 54),
        ),
        InkWell(
          onTap: () {},
          child: Opacity(
            opacity: 0.80,
            child: Container(
              width: responsibleSize(context: context, width: 140),
              height: responsibleSize(context: context, height: 60),
              decoration: ShapeDecoration(
                gradient: const LinearGradient(
                  begin: Alignment(-0.69, -0.72),
                  end: Alignment(0.69, 0.72),
                  colors: [
                    Color(0xFF00E5E5),
                    Color(0xFF72A4F1),
                    Color(0xFFE860FF)
                  ],
                ),
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
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    'Visit',
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
              ),
            ),
          ),
        ),
      ],
    );
  }
}
