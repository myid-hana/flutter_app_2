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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/img01.JPG'),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/img01.JPG'),
                ),
              ],
              accountName: Text('박하나'),
              accountEmail: Text('sosqkrgksml@mgmailnet'),
              onDetailsPressed: () {
                print('Arrow is moving');
              },
              decoration: BoxDecoration(
                color: Colors.red[300],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0)
                )
              ),
            ),
            ListTile(
              leading: Icon(Icons.home,
              color: Colors.grey[850],
              ),
              title: Text('Home'),
              onTap: () {
                print('Home Tap');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.settings,
              color: Colors.grey[850],
              ),
              title: Text('Settings'),
              onTap: () {
                print('Settings Tap');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.question_answer,
              color: Colors.grey[850],
              ),
              title: Text('qna'),
              onTap: () {
                print('question_answer Tap');
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}