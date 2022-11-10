import 'package:app_medic/app/ui/components/app_bar/app_bar.dart';
import 'package:app_medic/app/ui/components/drawer/drawer.dart';
import 'package:app_medic/app/ui/home/widgets/doctors_widget.dart';
import 'package:app_medic/app/ui/home/widgets/specialties_widget.dart';
import 'package:app_medic/app/ui/home/widgets/statistic_widget.dart';
import 'package:app_medic/core/theme/theme_general.dart';
import 'package:app_medic/core/utils/responsive.dart';
import 'package:flutter/material.dart';

class DesktopScaffold extends StatelessWidget {
  const DesktopScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Scaffold(
      backgroundColor: myDefaultBackground,
      appBar: myAppBar,
      body: Row(
        children: [
          const MyDrawer(),
          const SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                    flex: 4, child: StatisticWidget(responsive: responsive)),
                Expanded(
                    flex: 5, child: SpecialtiesWidget(responsive: responsive))
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
}
