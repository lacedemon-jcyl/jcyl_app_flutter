import 'package:flutter/material.dart';
import 'package:jcyl_app_flutter/meetup/ui/widgets/event_card.dart';

class MeetupHomeDraft extends StatelessWidget {
  const MeetupHomeDraft({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Buscar eventos')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: ListView(
          // 500 px
          children: [
            // Spacer(), //flex: 1 => 15px
            SizedBox(height: 16), //16 px
            EventCard(title: 'Evento 1'), //100 px
            SizedBox(height: 16), //16 px
            // Spacer(), //flex: 2 => 30px
            EventCard(title: 'Evento 2'), //100 px
            SizedBox(height: 16), //16 px
            // Spacer(), //flex: 1 => 15 px
            EventCard(title: 'Evento 3'), //100 px
            SizedBox(height: 16), //16 px
            // Spacer(), //flex: 1 => 15 px
            EventCard(title: 'Evento 4'), //100 px
            SizedBox(height: 16), //16 px
            // Spacer(), //flex: 1 => 15 px
            SizedBox(height: 16),
            EventCard(title: 'Evento 4'),
            SizedBox(height: 16),
            EventCard(title: 'Evento 4'),
            SizedBox(height: 16),
            EventCard(title: 'Evento 4'),
            SizedBox(height: 16),
            EventCard(title: 'Evento 4'),
            SizedBox(height: 16),
            EventCard(title: 'Evento 4'),
            SizedBox(height: 16),
            EventCard(title: 'Evento 4'),
            SizedBox(height: 16),
            EventCard(title: 'Evento 4'),
            SizedBox(height: 16),
            EventCard(title: 'Evento 4'),
            SizedBox(height: 16),
            EventCard(title: 'Evento 4'),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
