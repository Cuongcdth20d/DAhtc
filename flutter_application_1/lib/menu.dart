import 'package:flutter/material.dart';
import 'package:flutter_application_1/edit_password.dart';
import 'package:flutter_application_1/find.dart';
import 'package:flutter_application_1/foget_password.dart';
import 'package:flutter_application_1/test.dart';

class MenuTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Menu();
  }
}

class Menu extends State<MenuTab> {
  @override
  Widget build(BuildContext context) {
    Widget btnstart = SizedBox(
      width: 200,
      height: 100,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => test()));
        },
        child: Text('Bắt Đầu'),
        style: ElevatedButton.styleFrom(primary: Colors.blue),
      ),
    );
    Widget btnFind = SizedBox(
      width: 200,
      height: 100,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => find()));
        },
        child: Text('Tìm Bạn Bè'),
        style: ElevatedButton.styleFrom(primary: Colors.blue),
      ),
    );
    Widget btnFoget_password = SizedBox(
      width: 200,
      height: 100,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => edit_password()));
        },
        child: Text('Đổi Mật Khẩu'),
        style: ElevatedButton.styleFrom(primary: Colors.blue),
      ),
    );
    Widget btnRank = SizedBox(
      width: 200,
      height: 100,
      child: ElevatedButton(
        onPressed: () {
          //Navigator.push(
          //context, MaterialPageRoute(builder: (context) => Login()));
        },
        child: Text('Đấu Hạng'),
        style: ElevatedButton.styleFrom(primary: Colors.blue),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 100),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 70),
                  child: Text(
                    'Quiz Ask',
                    style: TextStyle(
                        fontSize: 50, color: Color.fromARGB(255, 158, 205, 6)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: btnstart,
                        margin: EdgeInsets.only(right: 30),
                      ),
                      btnRank,
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: btnFind,
                          margin: EdgeInsets.only(right: 30),
                        ),
                        btnFoget_password,
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromARGB(255, 248, 248, 245),
        backgroundColor: Color.fromARGB(255, 64, 122, 216),
        unselectedItemColor: Color.fromARGB(255, 247, 247, 249),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Bạn Bè',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Lịch Sử',
          ),
        ],
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          DrawerHeader(
            child: CircleAvatar(
              child: CircleAvatar(
                backgroundImage: AssetImage('images/logo.png'),
                radius: 65.0,
              ),
            ),
          ),
          Center()
        ],
      )),
    );
  }
}
