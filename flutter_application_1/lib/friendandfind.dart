import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Friend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Tìm Kiếm',
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    border: InputBorder.none),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
