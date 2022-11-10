import 'package:flutter/material.dart';

import 'package:app_medic/app/ui/components/app_bar/app_bar.dart';
import 'package:app_medic/app/ui/home/widgets/doctors_widget.dart';
import 'package:app_medic/app/ui/home/widgets/specialties_widget.dart';
import 'package:app_medic/app/ui/home/widgets/statistic_widget.dart';
import 'package:app_medic/core/icons/custom_icons.dart';
import 'package:app_medic/core/utils/responsive.dart';
import 'package:app_medic/core/theme/theme_general.dart';

class MobileScaffold extends StatelessWidget {
  const MobileScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Scaffold(
        appBar: myAppBar,
        body: Container(
            margin: const EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
            child: Column(
              children: [
                Expanded(
                  flex: 5,
                  child: StatisticWidget(responsive: responsive),
                ),
                Expanded(
                  flex: 4,
                  child: SpecialtiesWidget(responsive: responsive),
                ),
                Expanded(
                  flex: 8,
                  child: DoctorsWidget(responsive: responsive),
                )
              ],
            )),
        bottomNavigationBar: SizedBox(
          height: responsive.hp(8.0),
          child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              iconSize: 20.0,
              selectedItemColor: myDefaultBackground,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(CustomIcons.apps_120985), label: 'Apps'),
                BottomNavigationBarItem(
                    icon: Icon(CustomIcons.pindestinationmaplocation_82942),
                    label: 'Map'),
                BottomNavigationBarItem(
                    icon: Icon(CustomIcons
                        .coin_currency_dollar_finance_money_payment_wallet_icon_123189),
                    label: 'Card'),
                BottomNavigationBarItem(
                    icon: Icon(CustomIcons
                        .more_button_of_three_dots_icon_icons_com_74259),
                    label: 'More')
              ]),
        ));
  }
}
