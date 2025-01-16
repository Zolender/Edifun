import 'package:flutter/material.dart';

class TermsConditionsPage extends StatelessWidget {
  const TermsConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Terms and Conditions',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue.shade800,
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
                  color: Colors.blue.shade800,
                ),
              ),
              const SizedBox(height: 16),
              buildSection(
                '1. General',
                'These terms and conditions (the "Terms") govern your access to and use of EdiFun, an online education platform (the "Platform"). By using the Platform, you agree to be bound by these Terms. If you do not agree to these Terms, you may not access or use the Platform.',
              ),
              buildSection(
                '2. Account Registration',
                'To use the Platform, you must register for an account. When registering for an account, you must provide accurate and complete information and keep your account information up to date. You are responsible for maintaining the confidentiality of your account and are fully responsible for all activities that occur under your account.',
              ),
              buildSection(
                '3. User Content',
                'You are responsible for all content you post, upload, or otherwise make available on the Platform (collectively, "User Content"). You must not post, upload, or otherwise make available User Content that is illegal, obscene, threatening, defamatory, invasive of privacy, or otherwise objectionable.',
              ),
              buildSection(
                '4. Intellectual Property',
                'The Platform and all content on the Platform, including but not limited to text, images, and software, are the property of EdiFun or its licensors and are protected by copyright, trademark, and other laws.',
              ),
              buildSection(
                '5. Termination',
                'We may terminate or suspend your account or your access to the Platform if we determine that you have violated these Terms or engaged in any fraudulent or illegal activity.',
              ),
              buildSection(
                '6. Governing Law and Jurisdiction',
                'These Terms are governed by the laws of [State Name]. Any disputes will be resolved through binding arbitration.',
              ),
              buildSection(
                '7. Entire Agreement',
                'These Terms constitute the entire agreement between you and EdiFun and supersede all prior agreements.',
              ),
              buildSection(
                '8. Amendments',
                'EdiFun reserves the right to modify these Terms at any time. Material changes will be notified through the Platform.',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSection(String title, String content) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue.shade700,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            content,
            style: const TextStyle(
              fontSize: 16,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}