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
      home: const MyHomePage(title: 'Linear progress demo'),
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
                margin: const EdgeInsets.only(top: 20),
                child: const Text(
                  'Default indeterminant linear progress with default color',
                )),
            _defaultSizeLinearProgressIndicator(),
            Container(
                margin: const EdgeInsets.all(10),
                child:  const Text(
                  'Default size indeterminant linear progress with custom progress color',textAlign: TextAlign.center,
                )),
            _customLinearProgressIndicator(),
            Container(
                margin: const EdgeInsets.only(top: 20),
                child: const Text(
                  'Custom size indeterminant linear progress with background and progress color',
                  textAlign: TextAlign.center,
                )),
            _customLinearProgressIndicator2(),

            Container(
                margin: const EdgeInsets.only(top: 20),
                child: const Text(
                  'Custom size indeterminant linear progress with background and progress color',
                  textAlign: TextAlign.center,
                )),
            _determinantLinearProgressIndicator(),

            Container(
                margin: const EdgeInsets.only(top: 20),
                child: const Text(
                  'linear progress with text showing progress value',
                  textAlign: TextAlign.center,
                )),
            _determinantLinearProgressIndicatorWithPercentageIndicator(),
          ])),
    );
  }

  Widget _defaultSizeLinearProgressIndicator() {
    return Container(
        margin: const EdgeInsets.all(20.0),
        child: const LinearProgressIndicator());
  }

  Widget _customLinearProgressIndicator() {
    return Container(
        margin: const EdgeInsets.all(20.0),
        child: const LinearProgressIndicator(
          color: Colors.red,
        ));
  }

  Widget _customLinearProgressIndicator2() {
    return Container(
        margin: const EdgeInsets.all(20.0),
        child: const LinearProgressIndicator(
          color: Colors.red,
          backgroundColor: Colors.green,
          minHeight: 20,
        ));
  }

  double _progressValue = 1.0;

  Widget _determinantLinearProgressIndicator() {
    return Container(
        margin: const EdgeInsets.all(20.0),
        child: LinearProgressIndicator(
          minHeight: 30,
          value: _progressValue
        ));
  }

  Widget _determinantLinearProgressIndicatorWithPercentageIndicator() {
    return Container(
        margin: const EdgeInsets.all(20.0),
        child:
        Stack(children: [
        LinearProgressIndicator(
            minHeight: 30,
            value: _progressValue
        ),
        Center(
            child:
            Container(
                margin: const EdgeInsets.only(top:6),
                child:
            Text(_getProgressedValue(), textAlign: TextAlign.center,))
        )
        ],));
  }

  String _getProgressedValue()
  {
    double progressedValueInPercentage = _progressValue * 100;
    int temp = progressedValueInPercentage.toInt();
    return temp.toString() + "%";
  }
}
