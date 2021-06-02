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
        Column(
          
          children: [
            //1st Child
            SizedBox(width: 100.0, height: 100.0,
              child:
                DecoratedBox(decoration: BoxDecoration(color: Colors.red,)),
            ),

            // 2nd Child - this invisible SizedBox and being used here just for vertical spacing.
            // Remember a SizedBox without any child is invisible but it still occupies space.
            
            SizedBox(height: 10,),

            //3rd Child
            SizedBox(width: 100.0, height: 100.0,
              child:
                 DecoratedBox(decoration: BoxDecoration(color: Colors.green,))
            ),

            // 4th Child - this invisible SizedBox and being used here just for vertical spacing.
            // Remember a SizedBox without any child is invisible but it still occupies space.
            
            SizedBox(height: 10,),

            //5th Child
            SizedBox(width: 100.0, height: 100.0,
                child:
                DecoratedBox(decoration: BoxDecoration(color: Colors.blue,))
            ),
          ],
        )
    );
  }
}
