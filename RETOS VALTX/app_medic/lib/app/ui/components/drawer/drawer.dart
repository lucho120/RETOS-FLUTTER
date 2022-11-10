import 'package:app_medic/core/icons/custom_icons.dart';
import 'package:app_medic/core/theme/theme_general.dart';
import 'package:app_medic/core/utils/responsive.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Drawer(
      backgroundColor: myDefaultBackground,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          SizedBox(
            height: responsive.height > responsive.width
                ? responsive.hp(10.0)
                : responsive.wp(10.0),
            child: const DrawerHeader(
                margin: EdgeInsets.all(0.0),
                padding: EdgeInsets.all(0.0),
                child: Image(
                    image: NetworkImage(
                        'https://guecort.com/wp-content/uploads/2022/07/logo-wordpress.png'))),
          ),
          const ListTile(
            leading: Icon(Icons.home),
            title: Text('D A S H B O A R D'),
          ),
          const ListTile(
            leading: Icon(CustomIcons.apps_120985),
            title: Text('Apps'),
          ),
          const ListTile(
            leading: Icon(CustomIcons.pindestinationmaplocation_82942),
            title: Text('Maps'),
          ),
          const ListTile(
            leading: Icon(CustomIcons
                .coin_currency_dollar_finance_money_payment_wallet_icon_123189),
            title: Text('Cards'),
          ),
          const ListTile(
            leading: Icon(
                CustomIcons.more_button_of_three_dots_icon_icons_com_74259),
            title: Text('More'),
          ),
        ],
      ),
    );
  }
}
