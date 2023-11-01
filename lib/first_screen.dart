import 'package:flutter/material.dart';

// class FirstScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('First Screen')),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             DrawerHeader(
//               child: Text('Drawer Navigation - First Screen'),
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//             ),
//             ListTile(
//               title: Text('Second Screen'),
//               onTap: () {
//                 Navigator.pushNamed(context, '/second_screen');
//               },
//             ),
//             ListTile(
//               title: Text('Third Screen'),
//               onTap: () {
//                 Navigator.pushNamed(context, '/third_screen');
//               },
//             ),
//             ListTile(
//               title: Text('Fourth Screen'),
//               onTap: () {
//                 Navigator.pushNamed(context, '/fourth_screen');
//               },
//             ),
//           ],
//         ),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             // Ke second_screen.
//             Navigator.pushNamed(context, '/second_screen');
//           },
//           child: Text('Go to Second Screen'),
//         ),
//       ),
//     );
//   }
// }

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/second_screen');
          },
          child: Text('Go to Second Screen'),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        unselectedItemColor: Colors.grey, // Warna saat tidak dipilih
        selectedItemColor: Colors.blue, // Warna saat dipilih
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'First',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Second',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Third',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.layers),
            label: 'Fourth',
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, '/');
          } else if (index == 1) {
            Navigator.pushNamed(context, '/second_screen');
          } else if (index == 2) {
            Navigator.pushNamed(context, '/third_screen');
          } else if (index == 3) {
            Navigator.pushNamed(context, '/fourth_screen');
          }
        },
      ),
    );
  }
}
