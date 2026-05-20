import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final String title;
  const EventCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 100,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(title)],
        ),
      ),
    );
  }
}
