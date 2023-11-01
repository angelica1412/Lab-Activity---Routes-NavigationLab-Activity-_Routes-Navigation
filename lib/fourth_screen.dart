import 'package:flutter/material.dart';

// class FourthScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Fourth Screen')),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             DrawerHeader(
//               child: Text('Drawer Navigation - Fourth Screen'),
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//             ),
//             ListTile(
//               title: Text('First Screen'),
//               onTap: () {
//                 Navigator.pushNamed(context, '/');
//               },
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
//           ],
//         ),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: Text('Return to The Previous Screen'),
//         ),
//       ),
//     );
//   }
// }

class FourthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fourth Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Return to The Previous Screen'),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3,
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
