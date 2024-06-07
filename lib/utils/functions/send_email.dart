import 'dart:convert';

import 'package:http/http.dart' as http;

Future sendEmail({
  required String name,
  required String email,
  required String message,
}) async {
  final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
  await http.post(
    url,
    headers: {
      'Content-Type': 'application/json',
    },
    body: json.encode({
      // enter your account details here
      'service_id': 'SERVICE_ID_HERE',
      'template_id': 'TEMPLATE_ID_HERE',
      'user_id': 'USER_ID_HERE',
      'template_params': {
        'user_name': name,
        'user_email': email,
        'user_message': message,
      }
    }),
  );
}
