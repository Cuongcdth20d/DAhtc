import 'package:flutter/material.dart';

import 'login.dart';
import 'register.dart';
import 'test.dart';

class index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /* Widget btntest = SizedBox(
      width: 200,
      height: 100,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => test()));
        },
        child: Text('Chơi Thử'),
        style: ElevatedButton.styleFrom(primary: Colors.blue),
      ),
    );
    Widget btnlogin = SizedBox(
      width: 200,
      height: 100,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Login()));
        },
        child: Text('Đăng Nhập'),
        style: ElevatedButton.styleFrom(primary: Colors.blue),
      ),
    );
    Widget btnregister = SizedBox(
      width: 200,
      height: 100,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => register()));
        },
        child: Text('Đăng Ký'),
        style: ElevatedButton.styleFrom(primary: Colors.blue),
      ),
    );

    return Container(
      child: (Container(
        padding: const EdgeInsets.all(100),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          btntest,
          btnlogin,
          btnregister,
        ]),
      )),
    );*/
    return Scaffold(
      appBar: AppBar(title: Text('')),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              padding: EdgeInsets.all(50),
              child: Image.asset('images/logo.png'))
        ],
      ),
    );
  }
}
