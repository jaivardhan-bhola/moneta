import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:moneta/pages/dasboard.dart';
import 'package:moneta/pages/news.dart';
import 'package:moneta/pages/moneta.dart';
import 'package:moneta/pages/papertrading.dart';

import 'package:moneta/pages/settings.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map<String, Map>? entries = {};
  int currentIndex = 0;
  final screens = [
    Dashboard(),
    News(),
    Moneta(),
    PaperTrading(),
    Settings(),
  ];
  Box<dynamic> hiveBox = Hive.box('user');

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1A1A22),
        title: Image.asset('assets/AppbarLogo.png', height: 48),
      ),
      body: screens[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        onTap: (index) => setState(() => currentIndex = index),
        color: Color(0xff262932),
        backgroundColor: Color(0xff1A1A22),
        animationDuration: Duration(milliseconds: 150),
        items: [
          Icon(Icons.home_rounded, color: Color(0xFFFFC130)),
          Icon(Icons.newspaper_rounded, color: Color(0xFFFFC130)),
          SvgPicture.asset('assets/Moneta.svg', height: 24, width: 24),
          Icon(Icons.signal_cellular_alt_rounded, color: Color(0xFFFFC130)),
          Icon(Icons.settings_rounded, color: Color(0xFFFFC130))
        ],
      ),
    );
  }
}
