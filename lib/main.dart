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
      body: Builder(
        builder: (BuildContext ctx) {
          return Center(
            child: FlatButton(
              child: Text(
                'Show me',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.red,
              onPressed: () {
                Scaffold.of(ctx).showSnackBar(SnackBar(
                  content: Text('Hello'),
                ));
              },
            ),
          );
        },
      ),
    );
  }
}
