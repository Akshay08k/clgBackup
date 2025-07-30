import 'dart:io';

import 'package:day28/ThirdPage.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  TextEditingController userName = TextEditingController();
  TextEditingController passWord = TextEditingController();
  String ErrorText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(userName.text == "" ? "Appbar" : userName.text),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              ErrorText == "" ? "" : ErrorText,
              style: TextStyle(color: Colors.red),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
              child: Center(
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.cyan, fontSize: 30.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 40, 0, 20),
              child: SizedBox(
                height: 50,
                width: 300,
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  controller: userName,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    label: Text(
                      "Username",
                      style: TextStyle(color: Colors.white),
                    ),
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.cyan,
                        style: BorderStyle.solid,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                        style: BorderStyle.solid,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: SizedBox(
                height: 50,
                width: 300,
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  controller: passWord,
                  obscureText: true,
                  decoration: InputDecoration(
                    label: Text(
                      "Password",
                      style: TextStyle(color: Colors.white),
                    ),
                    prefixIcon: Icon(Icons.lock_outline),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.cyan,
                        style: BorderStyle.solid,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                        style: BorderStyle.solid,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {});

                if (userName.text == "Admin" && passWord.text == "admin") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ThirdPage()),
                  );
                } else {
                  ErrorText = "Please Enter Correct Id Pass";
                }

                print(
                  "Username : ${userName.text} \nPassword : ${passWord.text}",
                );
              },
              child: Text("Login", style: TextStyle(color: Colors.cyan)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Don't Have An Account?  ",
                    style: TextStyle(color: Colors.grey),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("Navigate");
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.cyan),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
