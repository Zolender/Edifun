import 'package:flutter/material.dart';

class TermsConditionsPage extends StatelessWidget {
  const TermsConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Terms and Conditions',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(194, 27, 97, 154),
        elevation: 4,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Terms and Conditions for EdiFun',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple.shade800,
                ),
              ),
              SizedBox(height: 16),
              Text(
                '1. General',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 31, 129, 162),
                ),
              ),
              SizedBox(height: 8),
              Text(
                'These terms and conditions (the "Terms") govern your access to and use of EdiFun, an online education platform (the "Platform"). By using the Platform, you agree to be bound by these Terms. If you do not agree to these Terms, you may not access or use the Platform.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
              SizedBox(height: 16),
              Text(
                '2. Account Registration',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 31, 129, 162),
                ),
              ),
              SizedBox(height: 8),
              Text(
                'To use the Platform, you must register for an account. When registering for an account, you must provide accurate and complete information and keep your account information up to date. You are responsible for maintaining the confidentiality of your account and are fully responsible for all activities that occur under your account. You may not use another user\'s account without permission. You must notify us immediately of any unauthorized use of your account or any other breach of security.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
              SizedBox(height: 16),
              Text(
                '3. User Content',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 31, 129, 162),
                ),
              ),
              SizedBox(height: 8),
              Text(
                'You are responsible for all content you post, upload, or otherwise make available on the Platform (collectively, "User Content"). You must not post, upload, or otherwise make available User Content that is illegal, obscene, threatening, defamatory, invasive of privacy, infringing on intellectual property rights, or otherwise injurious to third parties or objectionable. You must not upload commercial content on the Platform.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
              SizedBox(height: 16),
              Text(
                '4. Intellectual Property',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 31, 129, 162),
                ),
              ),
              SizedBox(height: 8),
              Text(
                'The Platform and all content on the Platform, including but not limited to text, images, audio, video, and software, are the property of EdiFun or its licensors and are protected by copyright, trademark, and other laws. You may not modify, copy, reproduce, republish, upload, post, transmit, or distribute any content from the Platform in any way without our prior written permission.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
              SizedBox(height: 16),
              Text(
                '5. Termination',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 31, 129, 162),
                ),
              ),
              SizedBox(height: 8),
              Text(
                'We may terminate or suspend your account or your access to the Platform if we determine that you have violated these Terms or engaged in any fraudulent or illegal activity. We also reserve the right to terminate or suspend the Platform at any time, without notice.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
              SizedBox(height: 16),
              Text(
                '6. Governing Law and Jurisdiction',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 31, 129, 162),
                ),
              ),
              SizedBox(height: 8),
              Text(
                'These Terms are governed by and construed in accordance with the laws of the State of [State Name] and the federal laws of the United States applicable therein. Any dispute arising out of or related to these Terms will be resolved through binding arbitration in accordance with the rules of the American Arbitration Association.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
              SizedBox(height: 16),
              Text(
                '7. Entire Agreement',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 31, 129, 162),
                ),
              ),
              SizedBox(height: 8),
              Text(
                'These Terms constitute the entire agreement between you and EdiFun and supersede all prior or contemporaneous agreements or understandings, whether written or oral.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
              SizedBox(height: 16),
              Text(
                '8. Amendments',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color:const Color.fromARGB(255, 31, 129, 162),
                ),
              ),
              SizedBox(height: 8),
              Text(
                'EdiFun reserves the right to modify or terminate the Platform or these Terms at any time and without notice. If EdiFun makes any material changes to these Terms, we will notify you by posting a notice on the Platform.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


