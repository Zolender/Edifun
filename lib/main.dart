import 'package:flutter/material.dart';
import 'authentication/login_page.dart';
import 'authentication/forgot_page.dart';
import 'authentication/registration_page.dart';
import 'authentication/termsofuse.dart';
import 'package:firebase_core/firebase_core.dart';
import 'authentication/splash_screen.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // initilizing firebase
  await Firebase.initializeApp(
    options: FirebaseOptions(
    apiKey: "AIzaSyAO4cBodwdNWfpTQC4FyOwkSpj2tmELVyY",
    authDomain: "edifun-123.firebaseapp.com",
    databaseURL: "https://edifun-123-default-rtdb.firebaseio.com",
    projectId: "edifun-123",
    storageBucket: "edifun-123.firebasestorage.app",
    messagingSenderId: "458232002096",
    appId: "1:458232002096:web:df5aaf5b86b43af8e41ff5",
    measurementId: "G-RNZJR8ZMD5"));
    // initialize app
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // adding routes to the app
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegistrationPage(),
        '/forgot': (context) => ForgotPasswordPage(),
        '/terms': (context) => TermsConditionsPage(),


      },
    );
  }
}

