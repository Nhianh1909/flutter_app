import 'package:flutter/material.dart';

class Third extends StatelessWidget {
  const Third({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ThirdScreen"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Container(
        height: 200,
        width: double.infinity, //put width is infinity that it have
        margin: EdgeInsets.all(20), //put all the offsets: top left bot right
        color: Colors.green,
        child: Text(
          "Hello Anthonys",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
