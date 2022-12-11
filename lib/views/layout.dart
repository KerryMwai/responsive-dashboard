import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  Widget mobileview;
  Widget tabletview;
  Widget desktopView;
  Responsive(
      {super.key,
      required this.mobileview,
      required this.tabletview,
      required this.desktopView});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 650) {
        return mobileview;
      } else if (constraints.maxWidth < 1100) {
        return tabletview;
      } else {
        return desktopView;
      }
    });
  }
}
