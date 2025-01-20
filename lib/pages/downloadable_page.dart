import 'package:flutter/material.dart';

class DownloadablePage extends StatelessWidget {
  const DownloadablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Discover Content'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: 5, // Example item count
        itemBuilder: (context, index) {
          return Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            elevation: 4,
            margin: const EdgeInsets.only(bottom: 16),
            child: ListTile(
              leading: const Icon(Icons.file_present, size: 36),
              title: Text('Content Item ${index + 1}'),
              subtitle: const Text('Details about this downloadable item.'),
              trailing: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Downloading Item ${index + 1}...')),
                  );
                },
                child: const Text('Download'),
              ),
            ),
          );
        },
      ),
    );
  }
}