// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     _showSplashScreen();
//   }

//   void _showSplashScreen() async {
//     await Future.delayed(Duration(seconds: 2)); // Display splash screen for 2.5 seconds
//     _checkLogin();
//   }

//   void _checkLogin() async {
//     User? user = FirebaseAuth.instance.currentUser;

//     if (user != null) {
//       Navigator.pushReplacementNamed(context, '/home');
//     } else {
//       Navigator.pushReplacementNamed(context, '/login');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blue,
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'EdiFun',
//               style: TextStyle(
//                 fontSize: 40,
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 20),
//             CircularProgressIndicator(
//               valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _configureFirebasePersistence(); // Ensure Firebase persistence is set
    _showSplashScreen();
  }

  /// Configures Firebase Auth persistence (Optional: Firebase persists by default).
  Future<void> _configureFirebasePersistence() async {
    await FirebaseAuth.instance.setPersistence(Persistence.LOCAL);
    // Options: LOCAL (default), SESSION, or NONE
  }

  /// Shows splash screen and checks login status after a delay.
  void _showSplashScreen() async {
    await Future.delayed(const Duration(seconds: 2)); // Display splash screen for 2 seconds
    _checkLogin();
  }

  /// Checks Firebase Auth for current user and navigates accordingly.
  void _checkLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userID = prefs.getString('userID');
     if (userID != null) {
      // User is logged in; Navigate to Home
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      // User is not logged in; Navigate to Login
      Navigator.pushReplacementNamed(context, '/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'EdiFun',
              style: TextStyle(
                fontSize: 50,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
