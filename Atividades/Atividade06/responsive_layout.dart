import 'package:flutter/material.dart';
import '../utils/breakpoints.dart';


class ResponsiveLayout extends StatelessWidget {
final Widget mobile;
final Widget tablet;
final Widget desktop;


const ResponsiveLayout({
super.key,
required this.mobile,
required this.tablet,
required this.desktop,
});


@override
Widget build(BuildContext context) {
return LayoutBuilder(
builder: (context, constraints) {
if (constraints.maxWidth < mobileBreakpoint) {
return mobile;
} else if (constraints.maxWidth < tabletBreakpoint) {
return tablet;
} else {
return desktop;
}
},
);
}
}
