import 'package:flutter/material.dart';
import 'secondscreen.dart'; // Đảm bảo đường dẫn import đúng

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //-------------------------------------------------------------//
      //*****************************APP BAR***************************//
      //-------------------------------------------------------------//
      appBar: AppBar(
        title: Text('Screen 1'),
        backgroundColor: Colors.teal,
        centerTitle: true, // Căn giữa tiêu đề
      ),

      //-------------------------------------------------------------//
      //*****************************TABS LEFT***************************//
      //-------------------------------------------------------------//
      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              child: Text(
                'Anthonys tabs',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(title: Text('Item1')),
            ListTile(title: Text('Item2')),
          ],
        ),
      ),

      //-------------------------------------------------------------//
      //*****************************MAIN BODY***************************//
      //-------------------------------------------------------------//
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen()), //
            );
          },
          child: Text('Go to Screen 2'),
        ), //this is a route button
      ),
    );
  }
}
