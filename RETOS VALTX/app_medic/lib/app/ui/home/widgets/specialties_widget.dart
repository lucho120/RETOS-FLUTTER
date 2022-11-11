import 'package:flutter/material.dart';

import 'package:app_medic/core/icons/custom_icons.dart';
import 'package:app_medic/core/theme/theme_general.dart';
import 'package:app_medic/core/utils/responsive.dart';

class SpecialtiesWidget extends StatelessWidget {
  final Responsive responsive;
  const SpecialtiesWidget({super.key, required this.responsive});

  @override
  Widget build(BuildContext context) {
    final List<Widget> mySpecialties = [
      CardSpeciality(
          responsive: responsive,
          icon: CustomIcons.medical_medicine_plaster_icon_228719,
          speciality: 'Traumatology'),
      CardSpeciality(
          responsive: responsive,
          icon: CustomIcons.covid_coronavirus_virus_corona_bacteria_icon_189130,
          speciality: 'Epidemology'),
      CardSpeciality(
          responsive: responsive,
          icon: CustomIcons
              .wave_cardiac_cardiology_monitor_medical_heartbeat_pulse_rate_heart_icon_212620,
          speciality: 'Cardiology'),
      CardSpeciality(
          responsive: responsive,
          icon: CustomIcons
              .vitamin_suplement_nutrition_fruits_fitness_diet_icon_149035,
          speciality: 'Nutrition'),
      CardSpeciality(
          responsive: responsive,
          icon: CustomIcons.face_recognition_icon_135652,
          speciality: 'Dermatology'),
      CardSpeciality(
          responsive: responsive,
          icon: CustomIcons.statistic_charts_chart_bars_icon_152105,
          speciality: 'Radiology'),
    ];
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.only(right: 15.0),
          leading: Text(
            'Specialties',
            style: TextStyle(
                color: myDefaultColorText, fontWeight: FontWeight.bold),
          ),
          trailing: const Text(
            'See all',
            style: TextStyle(
                color: Color.fromARGB(255, 170, 170, 170),
                fontWeight: FontWeight.w400,
                fontSize: 13.0),
          ),
        ),
        Expanded(
          child: ListView.builder(
            scrollDirection:
                responsive.width < 500 ? Axis.horizontal : Axis.vertical,
            itemCount: mySpecialties.length,
            itemBuilder: (_, index) => mySpecialties[index],
          ),
        ),
      ],
    );
  }

  Widget CardSpeciality(
      {required Responsive responsive,
      required IconData icon,
      required String speciality}) {
    return Card(
      elevation: 0.3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            height: 40.0,
            child: Icon(
              icon,
              color: myDefaultBackground,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 11.0),
            height: 25.0,
            child: Text(
              speciality,
              style: const TextStyle(color: Color.fromARGB(255, 134, 134, 134)),
            ),
          )
        ]),
      ),
    );
  }
}
