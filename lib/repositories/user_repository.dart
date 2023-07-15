import 'dart:convert';

import 'package:flutter_login/models/model.dart';
import 'package:http/http.dart' as http;

class UserRepository {
  Future<String> registerUser(User user) async {
    final url = Uri.http('localhost:9191', '/api/v1/auth/register');
    final response = await http.post(url, body: user);
    return jsonDecode(utf8.decode(response.bodyBytes));
  }
}
