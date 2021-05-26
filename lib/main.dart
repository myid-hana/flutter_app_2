import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'first app',
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BBANTO'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        elevation: 0.0,
      ),
      body: Center( //가로축 정렬
        child: Column( 
            mainAxisAlignment: MainAxisAlignment.center, //세로축 정렬
            children: [
              Text('hello'),
              Text('hello'),
              Text('hello')
            ],
          ),
      ),
      
    );
  }
}