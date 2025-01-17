import 'package:flutter/material.dart';

class DownloadsPage extends StatelessWidget {
  const DownloadsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Downloads'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: 5, // Replace with actual number of downloadable items
        itemBuilder: (context, index) {
          return Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            elevation: 4,
            margin: const EdgeInsets.only(bottom: 16),
            child: ListTile(
              leading: const Icon(Icons.file_download, size: 36),
              title: Text('Download Item ${index + 1}'),
              subtitle: const Text('Details about this item.'),
              trailing: IconButton(
                icon: const Icon(Icons.download),
                onPressed: () {
                  // Placeholder for download functionality
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Downloading...')),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}