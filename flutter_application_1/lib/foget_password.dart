import 'package:flutter/material.dart';

import 'returnn.dart';

class foget_password extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Foget password '),
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
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email',
                filled: true,
                fillColor: Color.fromARGB(255, 244, 244, 245),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                prefixIcon: Icon(Icons.email),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => returnn(),
                  ),
                );
              },
              child: Text('Gửi Yêu Cầu'),
            ),
          ),
        ],
      ),
    );
  }
}
