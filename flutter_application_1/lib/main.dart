import 'package:flutter/material.dart';
import 'package:flutter_application_1/find.dart';
import 'package:flutter_application_1/index.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/register.dart';
import 'package:flutter_application_1/suport.dart';
import 'package:google_fonts/google_fonts.dart';

import 'friendandfind.dart';
import 'menu.dart';

void main(List<String> args) => runApp(DoAnApp());

class DoAnApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigation Easy',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 18, 39, 107),
      ),
      home: register(),
    );
  }
}
