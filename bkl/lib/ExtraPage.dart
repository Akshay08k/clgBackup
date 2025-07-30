import 'package:flutter/material.dart';

class Extrapage extends StatelessWidget {
  Extrapage({super.key});

  TextEditingController userName = TextEditingController();
  TextEditingController Email = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Fields"),
        centerTitle: true,
        backgroundColor: Colors.white38,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      height: 380,
                      width: 400,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 0.5,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                              child: TextField(
                                controller: userName,
                                decoration: InputDecoration(
                                  label: Text(
                                    "Name",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                              child: TextField(
                                controller: Email,
                                decoration: InputDecoration(
                                  label: Text(
                                    "Email",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  suffixIcon: Icon(Icons.email),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                              child: TextField(
                                controller: mobile,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  label: Text(
                                    ""
                                    "Mobile",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  suffixIcon: Icon(Icons.contact_phone_sharp),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                              child: TextField(
                                controller: pass,
                                obscureText: true,
                                decoration: InputDecoration(
                                  label: Text(
                                    "Password",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  suffixIcon: Icon(Icons.password),
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                print(
                                  "Name : " +
                                      userName.text +
                                      "\nEmail : " +
                                      Email.text +
                                      "\nMobile : " +
                                      mobile.text +
                                      "\nPassword : " +
                                      pass.text,
                                );
                              },

                              child: Text("Submit"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
