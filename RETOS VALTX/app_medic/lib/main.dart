import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:app_medic/app/ui/home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /*  scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown
        },
      ), */
      debugShowCheckedModeBanner: false,
      title: 'App Medic',
      home: const HomeView(),
    );
  }
}
