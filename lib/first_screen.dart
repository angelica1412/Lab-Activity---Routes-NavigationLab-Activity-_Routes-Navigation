import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Screen')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Navigation - First Screen'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Second Screen'),
              onTap: () {
                Navigator.pushNamed(context, '/second_screen');
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
        child: ElevatedButton(
          onPressed: () {
            // Ke second_screen.
            Navigator.pushNamed(context, '/second_screen');
          },
          child: Text('Go to Second Screen'),
        ),
      ),
    );
  }
}
