import 'package:flutter/material.dart';

class ProgressSummaryWidget extends StatelessWidget {
  const ProgressSummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Your Progress', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text('Courses Completed: 5', style: TextStyle(fontSize: 16)),
            SizedBox(height: 4),
            Text('Hours Spent: 12 this week', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}