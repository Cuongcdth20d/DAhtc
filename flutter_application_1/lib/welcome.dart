import 'package:flutter/material.dart';

import 'login.dart';
import 'register.dart';
import 'test.dart';

class index extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return indexState();
  }
}

class indexState extends State<index> {
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
      // appBar: AppBar(
      //   title: Text(
      //     'App Quiz',
      //     textAlign: TextAlign.end,
      //   ),
      // ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 5),
              child: Image.asset('images/logo.png'),
            ),
            Text(
              'Quzi Game',
              style: TextStyle(fontSize: 30, color: Colors.grey),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ));
                },
                child: Text(
                  'Đăng Nhập',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blueGrey)),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => register(),
                    ));
              },
              child: Text(
                'Đăng Ký',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blueGrey)),
            ),
          ],
        ),
      ),
    );
  }
}
