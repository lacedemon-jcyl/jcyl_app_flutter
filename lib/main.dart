import 'package:flutter/material.dart';
import 'package:jcyl_app_flutter/meetup/ui/pages/meetup_home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MeetupHome());
  }
}
