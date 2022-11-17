import 'package:flutter/material.dart';
import 'package:flutter_application_1/test.dart';

class Level extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LevelState();
  }
}

class LevelState extends State<Level> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chọn Độ Khó'),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => test()));
              },
              child: Text('Dễ'),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue[300]),
                  minimumSize: MaterialStateProperty.all(Size(200, 170))),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => test()));
              },
              child: Text('Trung Bình'),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue[300]),
                  minimumSize: MaterialStateProperty.all(Size(200, 170))),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => test()));
              },
              child: Text('Khó'),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue[300]),
                  minimumSize: MaterialStateProperty.all(Size(200, 170))),
            ),
          ],
        ),
      ),
    );
  }
}
