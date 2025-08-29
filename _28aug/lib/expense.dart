import 'package:flutter/material.dart';
class Expense extends StatelessWidget {
  const Expense({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expense App"),
      ),
      body: Column(
        children: [
          TextField(
            controller:Vidhi ,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4)
              )
            ),
          ),
          TextField(

              keyboardType: TextInputType.text,
              decoration: InputDecoration(
              label: Text("Title"),
              focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4)
          )
    )
    ),
         ElevatedButton(
             onPressed: onPressed,
             child: child)
        ],
      ),
    );
  }
}
