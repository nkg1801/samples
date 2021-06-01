import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _widgetClicked = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Clicked: \n$_widgetClicked',
            style: const TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          InkWell(
            child: const Text(
              'This is clickable Text \nwith InkWell',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            onTap: () {
              setState(() {
                _widgetClicked = 'InkWell';
              });
            },
          ),
          GestureDetector(
            child: const Text(
              'This is clickable Text \nwith GestureDetector',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            onTap: () {
              setState(() {
                _widgetClicked = 'GestureDetector';
              });
            },
          ),
        ],
      )),
    );
  }
}
