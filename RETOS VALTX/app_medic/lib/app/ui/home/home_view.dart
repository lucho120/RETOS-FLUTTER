import 'package:app_medic/app/ui/components/responsive/desktop_scaffold.dart';
import 'package:app_medic/app/ui/components/responsive/mobile_scaffold.dart';
import 'package:app_medic/app/ui/components/responsive/responsive_layout.dart';
import 'package:app_medic/app/ui/components/responsive/tablet_scaffold.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: ResponsiveLayout(
            mobileScaffold: MobileScaffold(),
            tabletScaffold: TabletScaffold(),
            desktopScaffold: DesktopScaffold()));
  }
}
