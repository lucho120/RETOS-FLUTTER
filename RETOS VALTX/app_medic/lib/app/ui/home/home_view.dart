import 'package:app_medic/app/ui/components/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:app_medic/app/ui/components/app_bar/app_bar.dart';
import 'package:app_medic/app/ui/components/drawer/drawer.dart';
import 'package:app_medic/app/ui/home/widgets/content_widget.dart';
import 'package:app_medic/core/icons/custom_icons.dart';
import 'package:app_medic/core/theme/theme_general.dart';
import 'package:app_medic/core/utils/responsive.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Scaffold(
        appBar: myAppBar,
        drawer: responsive.width > 500 && responsive.width < 1100
            ? const MyDrawer()
            : null,
        body: const ContentWidget(),
        bottomNavigationBar: responsive.width < 500
            ? const BottomNavigationBarComponent()
            : null);
  }
}
