import 'dart:convert';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;

class GmailService {
  static Future<void> readEmails(GoogleSignInAccount user) async {
    final authHeaders = await user.authHeaders;
    final httpClient = http.Client();
    final response = await httpClient.get(
      Uri.parse('https://www.googleapis.com/gmail/v1/users/me/messages'),
      headers: {
        'Authorization': authHeaders['Authorization']!,
      },
    );
    print(response.body);
  }

  static Future<void> sendEmail(GoogleSignInAccount user, String messageId, String replyText) async {
    final authHeaders = await user.authHeaders;
    final httpClient = http.Client();
    final response = await httpClient.post(
      Uri.parse('https://www.googleapis.com/gmail/v1/users/me/messages/send'),
      headers: {
        'Authorization': authHeaders['Authorization']!,
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'raw': base64UrlEncode(utf8.encode(replyText)),
        'threadId': messageId,
      }),
    );
    print(response.body);
  }
}