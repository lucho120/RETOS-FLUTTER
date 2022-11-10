import 'package:app_medic/core/theme/theme_general.dart';
import 'package:app_medic/core/utils/responsive.dart';
import 'package:flutter/material.dart';

class StatisticWidget extends StatelessWidget {
  final Responsive responsive;
  const StatisticWidget({super.key, required this.responsive});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Monthly statistics',
          style:
              TextStyle(color: myDefaultColorText, fontWeight: FontWeight.bold),
        ),
        Stack(
          children: [
            Container(
              height: responsive.width < 500
                  ? responsive.hp(18.0)
                  : responsive.hp(32.0),
              margin: const EdgeInsets.only(top: 10.0, right: 12.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://img.freepik.com/vector-gratis/fondo-abstracto-onda-luz-telon-fondo-borroso-ilustracion-vectorial-su-diseno-grafico-fondo-pantalla-banner-plantilla-o-poster_1142-7638.jpg'))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      height: responsive.width < 500
                          ? responsive.hp(13.5)
                          : responsive.hp(25.0),
                      child: const ListTile(
                        title: Text(
                          '28,237',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 22.0),
                        ),
                        subtitle: Text(
                          'Successful treatments',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 13.0),
                        ),
                      )),
                  const Text(
                    '4.7% than previuos month',
                    style: TextStyle(
                        color: Color.fromRGBO(247, 245, 245, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 13.0),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
