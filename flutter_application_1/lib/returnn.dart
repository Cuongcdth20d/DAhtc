import 'package:flutter/material.dart';

class returnn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hihi '),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            child: Text('Quên Mật Khẩu',
                style: TextStyle(
                    fontSize: 50, color: Color.fromARGB(255, 202, 208, 12))),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Nhập số vừa nhận trong email',
                filled: true,
                fillColor: Color.fromARGB(255, 244, 244, 245),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Gửi'),
                        content: Text('Gửi Thành Công'),
                        actions: [
                          TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text('OK'))
                        ],
                      );
                    });
              },
              child: const Text('Gửi'),
            ),
          ),
        ],
      ),
    );
  }
}
