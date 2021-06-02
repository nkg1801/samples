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
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'My First Flutter app'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body:
      Column(children: [

        Container(
            margin: EdgeInsets.all(10),
            child: Text('A big red text', style: TextStyle(fontSize: 40, color: Colors.red))
        ),

        Container(
            margin: EdgeInsets.only(top:20, left:10),
            child: Text('A big red text with italics', style: TextStyle(fontSize: 40, color: Colors.red, fontStyle: FontStyle.italic))
        ),

        Container(
            margin: EdgeInsets.only(top:20, left:10),
            child: Text('A big text: Hello World', style: TextStyle(fontSize: 40, color: Colors.red, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic))
        ),

        Container(
            margin: EdgeInsets.only(top:20, left:10),
            child: Text('A multiline text without overflow: The quick brown fox jumped over the lazy sleeping dog',
                style: TextStyle(fontSize: 20, color: Colors.blue))
        ),

        Container(
            margin: EdgeInsets.only(top:20, left:10),
            child: Text('A line of text with overflow:  The quick brown fox jumped over the lazy sleeping dog', overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 20, color: Colors.blue))
        ),
      ],
      )
    );
  }
}
