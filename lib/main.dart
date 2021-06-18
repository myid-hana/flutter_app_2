import 'package:flutter/material.dart';

void main() => runApp(HanaApp());

class HanaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hana App',
      home: MyHome(),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Scaffold 를 리턴하는 모든 위젯 하나하나가 모두 라우터이다.
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: TextButton(
        child: Text('hana'),
        onPressed: () {
          print('hana');
        },
      ),
    );
  }
}
