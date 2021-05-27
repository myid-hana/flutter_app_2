import 'package:flutter/material.dart';

void main() => runApp(HanaApp());

class HanaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hana App',
      home: MyHome(),
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print('menu button is clicked');
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () { print('Shopping button is clicked'); },
          ), 
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () { print('search button is clicked'); },
          ),
        ],
      ),
    );
  }
}