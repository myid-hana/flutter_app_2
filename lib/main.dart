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
      appBar: AppBar(
        title: Text('Snack Bar'),
      ),
      body: MySnackBar(),
    );
  }
}

class MySnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
          child: Text('show me'),
          onPressed: () {
            Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'hello',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                backgroundColor: Colors.teal,
                duration: Duration(milliseconds: 1000),
              ),
            );
          }),
    );
  }
}
