import 'package:flutter/material.dart';
import 'package:smartbus/responsive_layout.dart';
import 'package:smartbus/views/desktop_view.dart';
import 'package:smartbus/views/layout.dart';
import 'package:smartbus/views/mobile_view.dart';
import 'package:smartbus/views/tablet_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Layout',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Responsive(
          mobileview: MobileView(),
          tabletview: Tablet(),
          desktopView: Desktop()),
      debugShowCheckedModeBanner: false,
    );
  }
}
