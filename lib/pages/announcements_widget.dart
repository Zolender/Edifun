import 'package:flutter/material.dart';

class AnnouncementsWidget extends StatelessWidget {
  const AnnouncementsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final announcements = [
      'New AI Chat feature released!',
      'Upcoming Webinar on Advanced AI on Friday',
    ];

    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Announcements', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            ...announcements.map((announcement) => ListTile(
                  leading: const Icon(Icons.announcement),
                  title: Text(announcement),
                )),
          ],
        ),
      ),
    );
  }
}