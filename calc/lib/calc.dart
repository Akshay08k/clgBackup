import "package:flutter/material.dart";
import 'package:math_expressions/math_expressions.dart';

class Calc extends StatefulWidget {
  Calc({super.key});

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  TextEditingController screen = TextEditingController();

  // ignore: non_constant_identifier_names
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
        child: SizedBox(
          height: 600,
          width: 300,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                child: Row(
                  children: [
                    SizedBox(
                      height: 50,
                      width: 300,
                      child: TextField(
                        controller: screen,
                        readOnly: true,
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
                  NumberButton("AC", Colors.orange, onTap: () {
                    screen.text = "";
                  }),
                  NumberButton("%", Colors.orange, onTap: () {
                    setState(() {
                      screen.text += "%";
                    });
                  }),
                  NumberButton("()", Colors.orange, onTap: () {
                    setState(() {
                      screen.text += "()";
                    });
                  }),
                  NumberButton(
                    "",
                    Colors.orange,
                    icon: Icons.backspace_rounded,
                    onTap: () {
                      if (screen.text.isNotEmpty) {
                        setState(() {
                          screen.text = screen.text.substring(0, screen.text.length - 1);
                        });
                      }
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  NumberButton("7", Colors.orange, onTap: () {
                    setState(() {
                      screen.text += "7";
                    });
                  }),
                  NumberButton("8", Colors.orange, onTap: () {
                    setState(() {
                      screen.text += "8";
                    });
                  }),
                  NumberButton("9", Colors.orange, onTap: () {
                    setState(() {
                      screen.text += "9";
                    });
                  }),
                  NumberButton("/", Colors.orange, onTap: () {
                    setState(() {
                      screen.text += "/";
                    });
                  }),
                ],
              ),
              Row(
                children: [
                  NumberButton("4", Colors.orange, onTap: () {
                    setState(() {
                      screen.text += "4";
                    });
                  }),
                  NumberButton("5", Colors.orange, onTap: () {
                    setState(() {
                      screen.text += "5";
                    });
                  }),
                  NumberButton("6", Colors.orange, onTap: () {
                    setState(() {
                      screen.text += "6";
                    });
                  }),
                  NumberButton("*", Colors.orange, onTap: () {
                    setState(() {
                      screen.text += "*";
                    });
                  }),
                ],
              ),
              Row(
                children: [
                  NumberButton("1", Colors.orange, onTap: () {
                    setState(() {
                      screen.text += "1";
                    });
                  }),
                  NumberButton("2", Colors.orange, onTap: () {
                    setState(() {
                      screen.text += "2";
                    });
                  }),
                  NumberButton("3", Colors.orange, onTap: () {
                    setState(() {
                      screen.text += "3";
                    });
                  }),
                  NumberButton("-", Colors.orange, onTap: () {
                    setState(() {
                      screen.text += "-";
                    });
                  }),
                ],
              ),
              Row(
                children: [
                  NumberButton(".", Colors.orange, onTap: () {
                    setState(() {
                      screen.text += ".";
                    });
                  }),
                  NumberButton("0", Colors.orange, onTap: () {
                    setState(() {
                      screen.text += "0";
                    });
                  }),
                  NumberButton("=", Colors.orange, onTap: () {
                    handleClick(screen.text);
                  }),
                  NumberButton("+", Colors.orange, onTap: () {
                    setState(() {
                      screen.text += "+";
                    });
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void handleClick(String value) {
    try {
      // Create a parser object
      Parser p = Parser();
      // Parse the input string and create an expression
      Expression exp = p.parse(value);
      // Create a context model (empty for simple expressions)
      ContextModel cm = ContextModel();
      // Evaluate the expression
      double eval = exp.evaluate(EvaluationType.REAL, cm);
      // Update the screen with the result
      setState(() {
        screen.text = eval.toString();
      });
    } catch (e) {
      // Handle any errors, e.g., an invalid expression
      setState(() {
        screen.text = "Error";
      });
    }
  }
}