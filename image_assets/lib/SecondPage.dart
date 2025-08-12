import "package:flutter/material.dart";

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _State();
}

class _State extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Images"), centerTitle: true),
        body: Column(
          children: [
            Row(
              children: [
                Image.asset("assets/images/image.jpg", width: 200, height: 200),
                CircleAvatar(
                  backgroundColor: Colors.red,
                  backgroundImage: AssetImage("assets/images/image.jpg"),
                  radius: 100,
                ),
              ],
            ),

            Row(
              children: [
                Image.network(
                  "https://cdn.pixabay.com/photo/2015/04/23/22/00/new-year-background-736885_1280.jpg",
                  width: 200,
                  height: 200,
                ),
                CircleAvatar(
                  backgroundColor: Colors.red,
                  backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2015/04/23/22/00/new-year-background-736885_1280.jpg",
                  ),
                  radius: 100,
                ),
              ],
            ),
          ],
        ),
    );
  }
}
