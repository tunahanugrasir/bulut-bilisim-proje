import 'dart:convert';
import 'package:http/http.dart' as http;

class OpenAIService {
  static const String _apiKey = 'YOUR_OPENAI_API_KEY'; // OpenAI API anahtarınızı buraya ekleyin

  static Future<String> generateReply(String emailContent) async {
    final response = await http.post(
      Uri.parse('https://api.openai.com/v1/engines/davinci-codex/completions'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $_apiKey',
      },
      body: jsonEncode({
        'prompt': 'Reply to this email: $emailContent',
        'max_tokens': 150,
      }),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data['choices'][0]['text'].trim();
    } else {
      throw Exception('Failed to generate reply');
    }
  }
}