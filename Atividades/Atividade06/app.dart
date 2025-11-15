import 'package:flutter/material.dart';
import 'responsive/responsive_layout.dart';
import 'responsive/mobile.dart';
import 'responsive/tablet.dart';
import 'responsive/desktop.dart';


class MyApp extends StatelessWidget {
const MyApp({super.key});


@override
Widget build(BuildContext context) {
return MaterialApp(
debugShowCheckedModeBanner: false,
title: 'Animated Responsive Layout',
home: const ResponsiveLayout(
mobile: MobileScreen(),
tablet: TabletScreen(),
desktop: DesktopScreen(),
),
);
}
}
