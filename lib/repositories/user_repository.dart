import 'dart:convert';

import 'package:flutter_login/models/model.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

class UserRepository {
  final storage = const FlutterSecureStorage();

  Future<String?> registerUser(User user) async {
    final Map<String, dynamic> mapBody = {
      'username': user.username,
      'email': user.email,
      'password': user.password
    };
    Map<String, String> requestHeaders = {
      'Content-Type': 'application/json',
      'Accept': '*/*',
    };
    final response = await http.post(
      Uri.parse('http://localhost:9191/api/v1/auth/register'),
      body: json.encode(mapBody),
      headers: requestHeaders,
    );
    if (response.statusCode != 200) {
      print(response.statusCode);
      return null;
    }
    return jsonDecode(response.body)['token'];
  }
}
