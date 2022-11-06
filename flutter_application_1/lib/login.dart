import 'package:flutter/material.dart';
import 'package:flutter_application_1/menu.dart';

import 'edit_password.dart';
import 'foget_password.dart';
import 'index.dart';
import 'register.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Đăng Nhập '),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            child: Text('Đăng Nhập',
                style: TextStyle(
                    fontSize: 50, color: Color.fromARGB(255, 202, 208, 12))),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: const TextField(
              decoration: InputDecoration(
                labelText: 'UserName',
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
                focusedBorder: OutlineInputBorder(),
                prefixIcon: Icon(Icons.password),
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
                        title: Text('Đăng Nhập'),
                        content: Text('Chúc mừng bạn đã đăng nhập thành công!'),
                        actions: [
                          TextButton(
                              onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MenuTab()),
                                  ),
                              child: Text('ok')),
                        ],
                      );
                    });
              },
              child: const Text('Đăng Nhập'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => foget_password(),
                          ));
                    },
                    child: Text('Quên Mật Khẩu'),
                    style: ElevatedButton.styleFrom(primary: Colors.blue),
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => register(),
                          ));
                    },
                    child: Text('Đăng Ký'),
                    style: ElevatedButton.styleFrom(primary: Colors.blue),
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
