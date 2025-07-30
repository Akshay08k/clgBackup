import 'package:flutter/material.dart';

class ContainerMy extends StatelessWidget{
  const ContainerMy({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(60.0)
                    ),
                  )
                  ,
                ),)
              ],
            )
          ],
        )
      ),
    );
  }
}