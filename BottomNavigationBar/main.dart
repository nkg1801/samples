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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
            _defaultSizeCircularIndicator(),
            _customSizeCircularProgressIndicator(),
                _customSizeCircularProgressIndicator2(),
          ])),
    );
  }

  Widget _defaultSizeCircularIndicator() {
    return Container(
        margin: const EdgeInsets.all(20.0),
        child: const CircularProgressIndicator(
          backgroundColor: Colors.redAccent,
          valueColor: AlwaysStoppedAnimation(Colors.grey),
          strokeWidth: 5,
        ));
  }

  Widget _customSizeCircularProgressIndicator() {
    return Container(
        margin: const EdgeInsets.all(20.0),
        child: const SizedBox(
            width: 100.0,
            height: 100.0,
            child: CircularProgressIndicator(
              backgroundColor: Colors.redAccent,
              valueColor: AlwaysStoppedAnimation(Colors.green),
              strokeWidth: 5,
            )));
  }

  Widget _customSizeCircularProgressIndicator2() {
    return Container(
        margin: const EdgeInsets.all(20.0),
        child: const SizedBox(
            width: 100.0,
            height: 100.0,
            child: CircularProgressIndicator(
              backgroundColor: Colors.redAccent,
              valueColor: AlwaysStoppedAnimation(Colors.green),
              semanticsLabel: '50.0',
              semanticsValue: '50.0',
              strokeWidth: 5,
            )));
  }
}
