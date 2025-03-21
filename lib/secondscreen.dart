import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  _SecondScreenState createState() => _SecondScreenState(); //sign class
}

class _SecondScreenState extends State<SecondScreen> {
  int _counter = 0; //variable to store number
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is Screen 2'),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "$_counter",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),

      floatingActionButtonLocation:
          FloatingActionButtonLocation
              .centerFloat, //location position on the Screen
      floatingActionButton: Row(
        //folow row
        mainAxisAlignment: MainAxisAlignment.center, //align wigde follow row
        children: [
          SizedBox(width: 20), //edit width which nearly Screen
          FloatingActionButton(
            backgroundColor: Colors.deepPurple,
            onPressed: () {
              setState(() {
                _counter++; //increase number variable
              });
            },
            child: Icon(Icons.add_call, color: Colors.white),
          ),
          Spacer(), //push icon sidewways
          FloatingActionButton(
            backgroundColor: Colors.red[400],
            onPressed: () {
              setState(() {
                _counter--;
              });
            },
            child: Icon(Icons.highlight_remove_rounded, color: Colors.white),
          ),
          SizedBox(width: 20), //edit width which nearly Screen edge
        ],
      ),
    );
  }
}
