import 'package:flutter/material.dart';

import 'package:app_medic/app/ui/components/app_bar/app_bar.dart';
import 'package:app_medic/app/ui/components/drawer/drawer.dart';
import 'package:app_medic/app/ui/home/widgets/doctors_widget.dart';
import 'package:app_medic/app/ui/home/widgets/specialties_widget.dart';
import 'package:app_medic/app/ui/home/widgets/statistic_widget.dart';
import 'package:app_medic/core/utils/responsive.dart';

class TabletScaffold extends StatelessWidget {
  const TabletScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Scaffold(
        appBar: myAppBar,
        drawer: const MyDrawer(),
        body: Container(
          margin: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: StatisticWidget(responsive: responsive),
                    ),
                    Expanded(
                      flex: responsive.height < 412 ? 2 : 3,
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
        ));
  }
}
