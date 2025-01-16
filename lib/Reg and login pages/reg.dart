// import 'package:flutter/material.dart';
// import 'terms_and_conditions.dart';

// class RegistrationPage extends StatefulWidget {
//   const RegistrationPage({super.key});

//   @override
//   _RegistrationPageState createState() => _RegistrationPageState();
// }

// class _RegistrationPageState extends State<RegistrationPage> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   final TextEditingController _confirmPasswordController = TextEditingController();
//   bool _agreeToTerms = false;

//   @override
//   void dispose() {
//     _nameController.dispose();
//     _emailController.dispose();
//     _passwordController.dispose();
//     _confirmPasswordController.dispose();
//     super.dispose();
//   }

//   String? _validateName(String? value) {
//     if (value == null || value.isEmpty) {
//       return 'Please enter your name';
//     }
//     return null;
//   }

//   String? _validateEmail(String? value) {
//     if (value == null || value.isEmpty) {
//       return 'Please enter your email';
//     }
//     final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
//     if (!emailRegex.hasMatch(value)) {
//       return 'Please enter a valid email';
//     }
//     return null;
//   }

//   String? _validatePassword(String? value) {
//     if (value == null || value.isEmpty) {
//       return 'Please enter a password';
//     }
//     if (value.length < 8) {
//       return 'Password must be at least 8 characters';
//     }
//     return null;
//   }

//   String? _validateConfirmPassword(String? value) {
//     if (value != _passwordController.text) {
//       return 'Passwords do not match';
//     }
//     return null;
//   }

//   void _submitRegistrationForm() {
//     if (_formKey.currentState!.validate() && _agreeToTerms) {
//       // TODO: Implement actual registration logic
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Registration successful!')),
//       );
//     } else if (!_agreeToTerms) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please agree to the terms and conditions')),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Background Gradient
//           Container(
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [const Color.fromARGB(255, 11, 26, 163), const Color.fromARGB(255, 31, 129, 162)],
//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomCenter,
//               ),
//             ),
//           ),
//           // Main Content
//           Center(
//             child: Padding(
//               padding: const EdgeInsets.all(24.0),
//               child: Form(
//                 key: _formKey,
//                 child: SingleChildScrollView(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.stretch,
//                     children: [
//                       // Title
//                       Text(
//                         'Register',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           fontSize: 32,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                           letterSpacing: 1.5,
//                         ),
//                       ),
//                       SizedBox(height: 20),
//                       // Name Field
//                       TextFormField(
//                         controller: _nameController,
//                         decoration: InputDecoration(
//                           hintText: 'Enter your name',
//                           prefixIcon: Icon(Icons.person, color: Colors.white),
//                           filled: true,
//                           fillColor: Colors.white.withOpacity(0.1),
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                             borderSide: BorderSide.none,
//                           ),
//                           hintStyle: TextStyle(color: Colors.white),
//                         ),
//                         style: TextStyle(color: Colors.white),
//                         validator: _validateName,
//                       ),
//                       SizedBox(height: 15),
//                       // Email Field
//                       TextFormField(
//                         controller: _emailController,
//                         decoration: InputDecoration(
//                           hintText: 'Enter your email',
//                           prefixIcon: Icon(Icons.email, color: Colors.white),
//                           filled: true,
//                           fillColor: Colors.white.withOpacity(0.1),
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                             borderSide: BorderSide.none,
//                           ),
//                           hintStyle: TextStyle(color: Colors.white),
//                         ),
//                         style: TextStyle(color: Colors.white),
//                         keyboardType: TextInputType.emailAddress,
//                         validator: _validateEmail,
//                       ),
//                       SizedBox(height: 15),
//                       // Password Field
//                       TextFormField(
//                         controller: _passwordController,
//                         decoration: InputDecoration(
//                           hintText: 'Enter your password',
//                           prefixIcon: Icon(Icons.lock, color: Colors.white),
//                           filled: true,
//                           fillColor: Colors.white.withOpacity(0.1),
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                             borderSide: BorderSide.none,
//                           ),
//                           hintStyle: TextStyle(color: Colors.white),
//                         ),
//                         style: TextStyle(color: Colors.white),
//                         obscureText: true,
//                         validator: _validatePassword,
//                       ),
//                       SizedBox(height: 15),
//                       // Confirm Password Field
//                       TextFormField(
//                         controller: _confirmPasswordController,
//                         decoration: InputDecoration(
//                           hintText: 'Confirm your password',
//                           prefixIcon: Icon(Icons.lock, color: Colors.white),
//                           filled: true,
//                           fillColor: Colors.white.withOpacity(0.1),
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                             borderSide: BorderSide.none,
//                           ),
//                           hintStyle: TextStyle(color: Colors.white),
//                         ),
//                         style: TextStyle(color: Colors.white),
//                         obscureText: true,
//                         validator: _validateConfirmPassword,
//                       ),
//                       SizedBox(height: 15),
//                       // Agree to Terms Checkbox
//                       Row(
//                         children: [
//                           Checkbox(
//                             value: _agreeToTerms,
//                             onChanged: (value) {
//                               setState(() {
//                                 _agreeToTerms = value!;
//                               });
//                             },
//                             activeColor: Colors.white,
//                             checkColor: Colors.purple.shade800,
//                           ),
//                           Flexible(
//                             child: 
//                               GestureDetector(
//                                 onTap: () {
//                                   Navigator.push(
//                                     context,
//                                     MaterialPageRoute(builder: (context) => TermsConditionsPage()),
//                                   );
//                                 },
//                                 child: Text(
//                                   'Read and Agree to the Terms and Conditions',
//                                   style: TextStyle(color: Colors.white, fontSize: 16, decoration: TextDecoration.none),
//                                 ),
//                               ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 20),
//                       // Register Button
//                       ElevatedButton(
//                         onPressed: _submitRegistrationForm,
//                         style: ElevatedButton.styleFrom(
//                           padding: EdgeInsets.symmetric(vertical: 16),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           backgroundColor: Colors.white,
//                         ),
//                         child: Text(
//                           'Register',
//                           style: TextStyle(
//                             color: Colors.purple.shade800,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 18,
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 15),
//                       // Back to Login
//                       GestureDetector(
//                         onTap: () {
//                           Navigator.pop(context);
//                         },
//                         child: Text(
//                           'Back to Login',
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 14,
//                             decoration: TextDecoration.underline,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'login.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  bool _agreeToTerms = false;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  Future<void> _submitRegistrationForm() async {
    if (_formKey.currentState!.validate() && _agreeToTerms) {
      try {
        // Firebase authentication registration
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: _emailController.text,
                password: _passwordController.text);

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Registration successful!')),
        );

        // Navigate to login page after successful registration
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const LoginPage()));
      } on FirebaseAuthException catch (e) {
        String message = 'An error occurred';
        if (e.code == 'email-already-in-use') {
          message = 'The email address is already in use by another account';
        }
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
      }
    } else if (!_agreeToTerms) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please agree to the terms and conditions')),
      );
    }
  }

  // Validators and UI setup remain the same as in your code...

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Gradient background and UI setup as in your code...
        ],
      ),
    );
  }
}
