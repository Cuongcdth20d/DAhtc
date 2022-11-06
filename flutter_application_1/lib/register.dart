import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'foget_password.dart';
import 'login.dart';

class register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Đăng Ký'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            child: Text('Đăng Ký',
                style: GoogleFonts.pinyonScript(
                  fontSize: 50,
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
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'Phone',
                filled: true,
                fillColor: Color.fromARGB(255, 244, 244, 245),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                prefixIcon: Icon(Icons.phone),
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
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Đăng Ký'),
                        content:
                            Text('Bạn đã đăng ký thành công, đăng nhập ngay!'),
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
              child: const Text('Đăng Ký'),
            ),
          ),
        ],
      ),
    );
  }
}
