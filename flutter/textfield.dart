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
      home: MyHomePage(title: 'TextField widget demo'),
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
  bool _isNameEmpty = false;
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:
        _formWidget()
    );
  }

  _formWidget()
  {
    return new
    Padding(
      padding: EdgeInsets.all(10),
      child:

    Column(children: [

      TextField(
        decoration: InputDecoration(labelText: 'Your ID'),
      ),

      SizedBox(height: 30,),

      new TextField(
        decoration: InputDecoration(
            labelText: 'Name',
          errorText: _isNameEmpty ? 'Please input your name' : null,
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color:Colors.green)),
          prefixIcon: IconButton(icon: Icon(Icons.person)),
          suffixIcon: IconButton(icon: Icon(Icons.clear)),
        ),
      ),

      SizedBox(height: 20,),

      TextField(
        decoration: InputDecoration(labelText: 'Address',
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color:Colors.green)),
        suffixIcon: IconButton(icon:Icon(Icons.clear),),
        ),
      ),
    ],
    )
    );
  }
}
