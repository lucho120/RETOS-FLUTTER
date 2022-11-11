import 'package:flutter/material.dart';

import 'package:app_medic/app/ui/components/drawer/drawer.dart';
import 'package:app_medic/app/ui/home/widgets/doctors_widget.dart';
import 'package:app_medic/app/ui/home/widgets/specialties_widget.dart';
import 'package:app_medic/app/ui/home/widgets/statistic_widget.dart';
import 'package:app_medic/core/utils/responsive.dart';

class ContentWidget extends StatelessWidget {
  const ContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth < 500) {
        return Container(
          margin: const EdgeInsets.only(left: 20.0, right: 10.0),
          child: Column(
            children: [
              StatisticWidget(responsive: responsive),
              Expanded(
                flex: 4,
                child: SpecialtiesWidget(responsive: responsive),
              ),
              Expanded(
                flex: 8,
                child: DoctorsWidget(responsive: responsive),
              )
            ],
          ),
        );
      } else if (constrains.maxWidth < 1100) {
        return Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    StatisticWidget(responsive: responsive),
                    Expanded(
                      child: SpecialtiesWidget(responsive: responsive),
                    )
                  ],
                ),
              ),
              Expanded(
                child: DoctorsWidget(responsive: responsive),
              )
            ],
          ),
        );
      } else {
        return Container(
          decoration: const BoxDecoration(
              border: Border(
                  top: BorderSide(color: Color.fromRGBO(160, 160, 160, 1)))),
          child: Row(
            children: [
              const MyDrawer(),
              const SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                        flex: 4,
                        child: StatisticWidget(responsive: responsive)),
                    Expanded(
                        flex: 5,
                        child: SpecialtiesWidget(responsive: responsive))
                  ],
                ),
              ),
              Expanded(
                child: DoctorsWidget(responsive: responsive),
              ),
            ],
          ),
        );
      }
    });
  }
}
