import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'badges_widget.dart';
import 'progress_summary_widget.dart';
import 'announcements_widget.dart';
import 'profile_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatelessWidget {
  final VoidCallback toggleTheme;

  const HomePage({super.key, required this.toggleTheme});

  Future<void> _signOut(BuildContext context) async {
    try {
      // Sign out the user from FirebaseAuth
      await FirebaseAuth.instance.signOut();

      // Remove user ID from local storage
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.remove('userID');

      // Navigate to the login page
      Navigator.pushReplacementNamed(context, '/login');
    } catch (e) {
      // Handle errors during sign-out
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error signing out: $e')),
      );
    }
  }

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
              child: const CircleAvatar(
                backgroundImage: NetworkImage('https://via.placeholder.com/150'),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () => _signOut(context), // Call _signOut on tap
          ),
        ],
      ),
    );
  }
}
