import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Navigation - Second Screen'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('First Screen'),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            ListTile(
              title: Text('Third Screen'),
              onTap: () {
                Navigator.pushNamed(context, '/third_screen');
              },
            ),
            ListTile(
              title: Text('Fourth Screen'),
              onTap: () {
                Navigator.pushNamed(context, '/fourth_screen');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Ke third_screen.dart
                Navigator.pushNamed(context, '/third_screen');
              },
              child: Text('Go to Third Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Return to The Previous Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
