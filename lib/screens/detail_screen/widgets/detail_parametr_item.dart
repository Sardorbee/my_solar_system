import 'package:cosmos_data/screens/detail_screen/widgets/one_param_item.dart';
import 'package:cosmos_data/utils/app_icons.dart';
import 'package:cosmos_data/utils/responsive_size.dart';
import 'package:flutter/material.dart';

class DetailParametrItem extends StatelessWidget {
  const DetailParametrItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: responsibleSize(context: context, height: 32),
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
      ],
    );
  }
}
