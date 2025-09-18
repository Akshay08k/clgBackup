import './RegisterModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiServices{
  Future<UserData?> register(String email,name,surname,password) async{
    final uri = Uri.parse("https://www.sparkstoideas.com/LJ/api/register");

    try{
      final res = await http.post(
        uri,
        body: {
          "Name" : name,
          "SurName": surname,
          "Email" : email,
          "Password" : password
        }
      );

      if (res.statusCode == 200) {
        print("Registered SuccessFully");
        final jsonData = json.decode(res.body);
        return UserData.fromJson(jsonData);
      } else {
        print("Failed to login: ${res.statusCode}");
        return null;
      }
    }catch(e){
      print(e);
      return null;
    }
  }
}