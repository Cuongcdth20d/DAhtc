import 'package:flutter/material.dart';

import 'login.dart';

class edit_password extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Đổi Mật Khẩu'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            child: Text('Đổi Mật Khẩu',
                style: TextStyle(
                  fontSize: 50,
                  color: Color.fromARGB(255, 202, 208, 12),
                )),
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
            child: const TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                filled: true,
                fillColor: Color.fromARGB(255, 244, 244, 245),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                prefixIcon: Icon(Icons.person),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                filled: true,
                fillColor: Color.fromARGB(255, 244, 244, 245),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                prefixIcon: Icon(Icons.password),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Confrim_Password',
                filled: true,
                fillColor: Color.fromARGB(255, 244, 244, 245),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                prefixIcon: Icon(Icons.password),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('Đổi Mật Khẩu'),
                              content: Text(
                                  'Bạn đã đổi mật khẩu thành, công đăng nhập ngay!'),
                              actions: [
                                TextButton(
                                    onPressed: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Login()),
                                        ),
                                    child: Text('ok')),
                              ],
                            );
                          });
                    },
                    child: const Text('Đổi Mật Khẩu'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
