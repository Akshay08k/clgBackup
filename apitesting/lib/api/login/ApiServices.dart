import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'LoginModel.dart';

class ApiServices{
  Future<Map<String ,dynamic>> login(String email,password) async{
      final url = Uri.parse("https://www.sparkstoideas.com/LJ/api/login");
      try{
        final response = await http.post(
          url,
          headers: {'Content-Type': 'application/x-www-form-urlencoded'},
          body: {
              "Email" : email,
              "Password": password
          },
        );

        print(response.body);

        if(response.statusCode == 200){
          return {
            "success" : true,
            "Message" : "Login Successfull",
          };
        }else{
          return{
            "sucess":false,
            "Message" : "Login Failed",
          };
        }
      }catch(e){
        print(e);
      }
      return{
        "sucess":false,
        "Message" : "Login Failed",
      };
  }
}