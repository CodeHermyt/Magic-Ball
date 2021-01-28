import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Magic Ball',
      home: DicePage(),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int imgNumber = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4ca2f5),
      appBar: AppBar(
        backgroundColor: Color(0xff2c6caa),
        title: Text('Magic Ball'),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
                // ignore: missing_required_param
                child: FlatButton(
                    onPressed: () {
                      //print('Clicked');
                      setState(() {
                        imgNumber = Random().nextInt(5) + 1;
                      });
                    },
                    child: Image.asset('assets/images/ball$imgNumber.png')))
          ],
        ),
      ),
    );
  }
}
