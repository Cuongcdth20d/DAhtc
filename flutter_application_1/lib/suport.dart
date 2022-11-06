import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class suport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tìm Kiếm'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 100,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 171, 208, 38)),
            child: Center(
              child: const Text('Hỗ Trợ',
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 244, 245, 242))),
            ),
          ),
        ],
      ),
    );
  }
}
