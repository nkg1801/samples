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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Container(
            margin: const EdgeInsets.only(top: 30),
            child: const Text(
              'Default size indeterminant circular progress',
            )),
        _defaultSizeCircularIndicator(),
        Container(
            margin: const EdgeInsets.only(top: 30),
            child: const Text(
              'Custom size indeterminant circular progress',
            )),
        _customSizeCircularProgressIndicator(),
        Container(
            margin: const EdgeInsets.only(top: 30),
            child: const Text(
              'Custom size determinant circular progress showing 50% completion',
              textAlign: TextAlign.center,
            )),
        _customSizeDeterminantCircularProgressIndicator(),
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

  Widget _customSizeDeterminantCircularProgressIndicator() {
    return Container(
        margin: const EdgeInsets.all(20.0),
        child: const SizedBox(
            width: 100.0,
            height: 100.0,
            child: CircularProgressIndicator(
              backgroundColor: Colors.grey,
              strokeWidth: 5,
              value: 0.5,
            )));
  }
}
