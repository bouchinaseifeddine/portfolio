import 'dart:convert';

import 'package:http/http.dart' as http;

Future sendEmail({
  required String name,
  required String email,
  required String message,
}) async {
  final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
  final response = await http.post(
    url,
    headers: {
      'Content-Type': 'application/json',
    },
    body: json.encode({
      'service_id': 'service_xb9a89m',
      'template_id': 'template_9t2utc5',
      'user_id': 'aq7EOGBpSsY1CyTxk',
      'template_params': {
        'user_name': name,
        'user_email': email,
        'user_message': message,
      }
    }),
  );
}
