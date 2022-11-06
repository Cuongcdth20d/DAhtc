import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // đáp án
    Widget btna = SizedBox(
      width: 150,
      height: 100,
      child: ElevatedButton(
        onPressed: () {},
        child: Text('Cực'),
        style:
            ElevatedButton.styleFrom(primary: Color.fromARGB(255, 8, 126, 252)),
      ),
    );
    Widget btnb = SizedBox(
      width: 150,
      height: 100,
      child: ElevatedButton(
        onPressed: () {},
        child: Text('Cực Cực'),
        style:
            ElevatedButton.styleFrom(primary: Color.fromARGB(255, 8, 126, 252)),
      ),
    );
    Widget btnc = SizedBox(
      width: 150,
      height: 100,
      child: ElevatedButton(
        onPressed: () {},
        child: Text('Cực Cực'),
        style:
            ElevatedButton.styleFrom(primary: Color.fromARGB(255, 8, 126, 252)),
      ),
    );
    Widget btnd = SizedBox(
      width: 150,
      height: 100,
      child: ElevatedButton(
        onPressed: () {},
        child: Text('Cực Cực Cực'),
        style:
            ElevatedButton.styleFrom(primary: Color.fromARGB(255, 8, 126, 252)),
      ),
    );
////////////////////////////////////////////////////////////////////
    return Scaffold(
      appBar: AppBar(
        title: const Text('Câu Hỏi'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(35),
            child: const Text(
              'Câu ',
              style: TextStyle(
                  fontSize: 50, color: Color.fromARGB(255, 202, 208, 12)),
            ),
          ),
          Container(
            width: 350,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Center(
              child: const Text(
                  'Cristiano Ronaldo đã thi đấu \n'
                  'bao nhiêu trận cho real marid',
                  style: TextStyle(fontSize: 20, color: Colors.red)),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 100),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: btna,
                        margin: EdgeInsets.only(right: 30),
                      ),
                      btnb,
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: btnc,
                          margin: EdgeInsets.only(right: 30),
                        ),
                        btnd,
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
