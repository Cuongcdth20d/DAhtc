import 'package:flutter/material.dart';
import 'package:flutter_application_1/level_screen.dart';
import 'package:flutter_application_1/returnn.dart';
import 'package:flutter_application_1/test.dart';

class ManChoi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ManChoiState();
  }
}

class ManChoiState extends State<ManChoi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chọn Chủ Đề'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Level()));
              },
              icon: Icon(Icons.book_outlined),
              label: Text('Giáo Dục'),
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Level()));
              },
              icon: Icon(Icons.sports_soccer),
              label: Text('Thể Thao'),
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Level()));
              },
              icon: Icon(Icons.keyboard_alt),
              label: Text('Esport'),
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Level()));
              },
              icon: Icon(Icons.computer_rounded),
              label: Text('Công Nghệ Thông Tin'),
            ),
          ],
        ),
      ),
    );
  }
}
