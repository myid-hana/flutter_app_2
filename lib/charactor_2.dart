import 'package:flutter/material.dart';

void main() => runApp(HanaApp());

class HanaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HanaApp',
      home: HanaHome(),
    );
  }
}

class HanaHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      appBar: AppBar(
        title: Text('Hana App'),
        centerTitle: true,
        backgroundColor: Colors.brown[600],
        ), 
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 30.0, 10.0, 0.0),
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
              backgroundImage: AssetImage('assets/img01.JPG'),
              radius: 60.0,
              ),
            ), 
            SizedBox(
              height: 20.0,
            ),
            Text('안녕하세요 박하나입니다.',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text('flutter Study를 열심히 하자!',
                      style: TextStyle(fontSize: 18.0),
                      ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text('앞으로 2개월만',
                      style: TextStyle(fontSize: 18.0),
                      ),
              ],
            ),
            SizedBox(height: 20.0,),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text('일에만 집중하자.',
                      style: TextStyle(fontSize: 18.0),
                      ),
              ],
            ),
          ],    
        ),
      )
    );
  }
}