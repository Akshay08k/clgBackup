import 'package:http/http.dart' as http;
import 'dart:convert';
import './LoginModel.dart';

class ApiServices {
  Future<UserData?> login(String email, String password) async {
    Uri url = Uri.parse("https://sparkstoideas.com/LJ/api/login");

    try {
      final res = await http.post(
        url,
        body: {
          "Email": email,
          "Password": password,
        },
      );

      if (res.statusCode == 200) {
        final jsonData = json.decode(res.body);
        return UserData.fromJson(jsonData);
      } else {
        print("Failed to login: ${res.statusCode}");
        return null;
        }
      } catch (e) {
      print("Error during login: $e");
      return null;
    }
  }
}

