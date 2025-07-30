import "package:flutter/material.dart";

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:
        Container(
          height: 500,
          width: 500,
          color: Colors.red,
        ),
      ),
    );
  }
}
