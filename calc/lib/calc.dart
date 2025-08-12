import "package:flutter/material.dart";

class Calc extends StatelessWidget {
  Calc({super.key});

  TextEditingController ScreenValue = TextEditingController();

  Widget NumberButton(
    String text,
    Color color, {
    IconData? icon,
    Color? iconColor,
    Color? textColor,
    Function()? onTap,
  }) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 30,
            backgroundColor: color,
            child: icon == null
                ? Text(
                    text,
                    style: TextStyle(
                      color: textColor ?? Colors.black,
                      fontSize: 24,
                    ),
                  )
                : Icon(icon, color: iconColor ?? Colors.black),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Center(
        child: Container(
          height: 400,
          width: 240,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 240,
                      child: TextField(
                        controller: ScreenValue,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2.0),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2.0),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  NumberButton("AC",Colors.orange),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.percent_sharp),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.percent),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.backspace_outlined),
                  ),
                ],
              ),

              Row(
                children: [
                  FloatingActionButton(onPressed: () {}, child: Text("7")),

                  FloatingActionButton(onPressed: () {}, child: Text("8")),

                  FloatingActionButton(onPressed: () {}, child: Text("9")),
                  FloatingActionButton(onPressed: () {}, child: Text("/")),
                ],
              ),
              Row(
                children: [
                  FloatingActionButton(onPressed: () {}, child: Text("4")),

                  FloatingActionButton(onPressed: () {}, child: Text("5")),

                  FloatingActionButton(onPressed: () {}, child: Text("6")),
                  FloatingActionButton(onPressed: () {}, child: Text("*")),
                ],
              ),
              Row(
                children: [
                  FloatingActionButton(onPressed: () {}, child: Text("1")),

                  FloatingActionButton(onPressed: () {}, child: Text("2")),

                  FloatingActionButton(onPressed: () {}, child: Text("3")),
                  FloatingActionButton(onPressed: () {}, child: Text("-")),
                ],
              ),
              Row(
                children: [
                  FloatingActionButton(onPressed: () {}, child: Text("/")),
                  FloatingActionButton(onPressed: () {}, child: Text("0")),
                  FloatingActionButton(onPressed: () {}, child: Text("=")),
                  FloatingActionButton(onPressed: () {}, child: Text("+")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
