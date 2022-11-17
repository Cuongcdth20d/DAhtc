import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/batdau_screen.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  int _selectedIndex = 0;
  void onTapIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> lsScreen = [
    MenuTab(),
    Text('Mafn hinhf 1'),
    Text('Mafn hinhf 3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        // selectedItemColor: Color.fromARGB(255, 248, 248, 245),
        backgroundColor: Colors.blueAccent,
        // unselectedItemColor: Color.fromARGB(255, 247, 247, 249),
        index: _selectedIndex,
        onTap: onTapIndex,
        height: 50,
        animationDuration: Duration(milliseconds: 500),
        items: [
          Icon(Icons.home_filled, size: 25),
          Icon(Icons.person, size: 25),
          Icon(Icons.history, size: 25),
        ],
      ),
      body: lsScreen[_selectedIndex],
    );
  }
}
