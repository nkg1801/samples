import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'My First Flutter app'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() =&gt; _MyHomePageState();
}

class _MyHomePageState extends State&lt;MyHomePage&gt; {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      <mark>backgroundColor: Colors.green,</mark>
      <mark>appBar: AppBar(title: Text('I am learning flutter')),</mark>
      <mark>body: Text('My flutter app'),</mark>
    );
  }
}
