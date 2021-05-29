import 'package:flutter/material.dart';
import 'package:app/charactor.dart';

void main() => runApp(HanaApp());

class HanaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hana App',
      initialRoute: '/',
      routes: {
        '/': (context) => Grade(),
        '/first': (context) => MyHome(),
        '/second': (context) => SecondPage()
      },
      // theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Scaffold 를 리턴하는 모든 위젯 하나하나가 모두 라우터이다.
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to Second Page'),
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Scaffold 를 리턴하는 모든 위젯 하나하나가 모두 라우터이다.
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to First Page'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
