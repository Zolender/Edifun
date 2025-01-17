import 'package:flutter/material.dart';
import 'badges_widget.dart';
import 'progress_summary_widget.dart';
import 'announcements_widget.dart';
import 'profile_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
class HomePage extends StatelessWidget {
  final VoidCallback toggleTheme;

  const HomePage({super.key, required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: toggleTheme,
          ),
        ],
      ),
      drawer: _buildSidebar(context),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: const [
            ProgressSummaryWidget(),
            BadgesWidget(),
            AnnouncementsWidget(),
          ],
        ),
      ),
    );
  }

  Widget _buildSidebar(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('John Doe'),
            accountEmail: const Text('johndoe@example.com'),
            currentAccountPicture: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
              },
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://via.placeholder.com/150'),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            // Logout and navigate to login page
            onTap: () => {
              Navigator.pushReplacementNamed(context, '/login'),
              FirebaseAuth.instance.signOut(),
            }
          ),
        ],
      ),
    );
  }
}