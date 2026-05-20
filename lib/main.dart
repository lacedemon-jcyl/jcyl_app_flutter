import 'package:flutter/material.dart';
import 'package:jcyl_app_flutter/country/ui/pages/country_home.dart';
import 'package:jcyl_app_flutter/home/pages/home_page.dart';
import 'package:jcyl_app_flutter/meetup/ui/pages/meetup_home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: {
        '/meetup': (context) => MeetupHome(),
        '/country': (context) => CountryHome(),
      },
    );
  }
}
