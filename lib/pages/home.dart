import 'package:flutter/material.dart';
import 'badges_widget.dart';
import 'progress_summary_widget.dart';
import 'announcements_widget.dart';
import 'profile_page.dart';
import 'downloadable_page.dart';
import 'downloaded_page.dart'; // Replace with the specific feature you want
import 'package:firebase_auth/firebase_auth.dart';

/// HomePage widget representing the main screen of the app.
/// Includes an AppBar, Sidebar (Drawer), and main content sections (Announcements, Badges, Progress Summary).
class HomePage extends StatelessWidget {
  /// Callback function for toggling the theme (light/dark mode).
  final VoidCallback toggleTheme;

  const HomePage({super.key, required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar with title and theme toggle button.
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          // Theme toggle icon in the top-right corner.
          IconButton(
            icon: const Icon(Icons.brightness_6),
            onPressed: toggleTheme,
          ),
        ],
      ),
      // Sidebar (Drawer) with user info and navigation options.
      drawer: _buildSidebar(context),
      // Main body content with scrollable layout for Announcements, Badges, and Progress Summary.
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome Back!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            // Announcements section.
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              elevation: 4,
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: AnnouncementsWidget(),
              ),
            ),
            const SizedBox(height: 16),
            // Badges section with animations for user achievements.
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              elevation: 4,
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: BadgesWidget(),
              ),
            ),
            const SizedBox(height: 16),
            // Progress Summary section showing progress bars or graphs.
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              elevation: 4,
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: ProgressSummaryWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Sidebar (Drawer) with user info, navigation options, and a logout button.
  Widget _buildSidebar(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // User info section styled like Telegram.
          UserAccountsDrawerHeader(
            accountName: const Text('John Doe'),
            accountEmail: const Text('johndoe@example.com'),
            currentAccountPicture: GestureDetector(
              onTap: () {
                // Navigate to Profile Page when tapping the profile picture.
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
          // Navigation options for Profile.
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            },
          ),
          // Navigation to the new feature page.
          ListTile(
            leading: const Icon(Icons.star),
            title: const Text('Feature Page'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FeaturePage()),
              );
            },
          ),
          // Navigation to Downloads/Offline Mode.
          ListTile(
            leading: const Icon(Icons.download),
            title: const Text('Downloads'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DownloadsPage()),
              );
            },
          ),
          // Logout button at the bottom-left in red.
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.red),
            title: const Text('Logout', style: TextStyle(color: Colors.red)),
            onTap: () async {
              // Firebase logout logic.
              await FirebaseAuth.instance.signOut();
              // Navigate back to the login page after logout.
              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
      ),
    );
  }
}