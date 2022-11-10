import 'package:app_medic/core/icons/custom_icons.dart';
import 'package:app_medic/core/theme/theme_general.dart';
import 'package:app_medic/core/utils/responsive.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarComponent extends StatelessWidget {
  const BottomNavigationBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return SizedBox(
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
                icon: Icon(
                    CustomIcons.more_button_of_three_dots_icon_icons_com_74259),
                label: 'More')
          ]),
    );
  }
}
