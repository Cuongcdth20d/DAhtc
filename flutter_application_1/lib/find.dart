import 'package:flutter/material.dart';

class find extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tìm Kiếm'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            child: Text('Tìm Người Chơi',
                style: TextStyle(
                    fontSize: 50, color: Color.fromARGB(255, 202, 208, 12))),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: const TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Nhập ID Người Chơi',
                filled: true,
                fillColor: Color.fromARGB(255, 244, 244, 245),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: ElevatedButton(
              onPressed: () {
                /*Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => returnn(),
                  ),
                );*/
              },
              child: Text('Tìm'),
            ),
          ),
        ],
      ),
    );
  }
}
