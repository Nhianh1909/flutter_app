import 'package:flutter/material.dart';
import 'mainscreen.dart';
import 'secondscreen.dart';
import 'third.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  //can change loop Widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anthonys',
      theme: ThemeData(primaryColor: const Color.fromARGB(255, 134, 157, 135)),
      home: HomeScreen(),
    );
  } //build title, theme and home
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  //-------------------------------------------------------------//
  //*****************************AppBar***************************//
  //-------------------------------------------------------------//
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen'),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      //-------------------------------------------------------------//
      //*****************************TABS***************************//
      //-------------------------------------------------------------//
      drawer: Drawer(
        //menu tabs
        child: ListView(
          //create list menu
          children: const <Widget>[
            DrawerHeader(
              //create title
              decoration: BoxDecoration(
                color: Colors.green,
              ), //put a backgroundColor
              child: Text(
                'Anthonys Tabs',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),

            ListTile(
              title: Text('Item 1'),
              leading: Icon(Icons.people),
            ), //list and leading is a Widget for use icon
            ListTile(title: Text('Item 2'), leading: Icon(Icons.mail)),
          ],
        ),
      ),
      //-------------------------------------------------------------//
      //*****************************TABS RIGHT***************************//
      //-------------------------------------------------------------//
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue[300]),
              child: Text(
                'endDrawer',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
            ListTile(
              title: Text('End Draw Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      //-------------------------------------------------------------//
      //*****************************BODY MAIN***************************//
      //-------------------------------------------------------------//
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // align center
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainScreen()),
                );
              },
              child: Text('Go to MainScreen'),
            ),
            SizedBox(height: 20), //distance between 2 button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondScreen()),
                );
              },
              child: Text('Go to SecondScreen'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Third()),
                );
              },
              child: Text('Go to ThirdScreen'),
            ),
          ],
        ),
      ), //align center context
      //-------------------------------------------------------------//
      //*****************************BottomNavigationBar***************************//
      //-------------------------------------------------------------//
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        fixedColor: Colors.green,
        items: const [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "Search", icon: Icon(Icons.search)),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.account_circle),
          ),
        ],
        onTap: (int indexOfItem) {
          print("Clicked on index: $indexOfItem"); // Xử lý khi nhấn nút
        },
      ),
    );
  }
}
