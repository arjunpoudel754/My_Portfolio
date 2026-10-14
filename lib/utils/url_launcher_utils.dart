import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> openUrl(String urlString) async {
  final Uri uri = Uri.parse(urlString);
  if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
    throw Exception('Could not launch $urlString');
  }
}

Future<void> composeEmail(
  BuildContext context,
  TextEditingController nameController,
  TextEditingController subjectController,
  TextEditingController messageController,
) async {
  final name = nameController.text.trim();
  final subject = subjectController.text.trim();
  final message = messageController.text.trim();

  final emailBody = <String>[
    'Dear Soe Myint,',
    if (message.isNotEmpty) message,
    if (name.isNotEmpty) 'Warm regards,\n$name\n',
  ].join('\n\n');

  final emailUri = Uri(
    scheme: 'mailto',
    path: 'arjunpoudel754@gmail.com',
    queryParameters: {
      'subject': subject.isEmpty ? 'Portfolio Inquiry' : subject,
      'body': emailBody,
    },
  );

  try {
    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri, mode: LaunchMode.externalApplication);
      return;
    }

    if (!context.mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('No email app is available')),
    );
  } catch (e) {
    if (!context.mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Could not open email: $e')),
    );
  }
}