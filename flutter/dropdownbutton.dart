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
          children: <Widget>[
            const SizedBox(height: 50),
            _dropDownBookTitles(),
          ],
        ),
      ),
    );
  }

  final List<String> _dropdownValues = [
    'Prestige Tranquility',
    'Brigade Buena Vista',
    'Brigade Golden Triagnle'
  ];

  String? _chosenSocietyName = 'Prestige Tranquility';

  Widget _dropDownBookTitles() {
    return DropdownButton<String>(
      value: _chosenSocietyName,
      style: const TextStyle(color: Colors.black),
      items: _dropdownValues.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      hint: const Text(
        "Choose the society",
        style: TextStyle(
            color: Colors.black, fontSize: 14, fontWeight: FontWeight.w600),
      ),
      onChanged: (String? newValue) {
        setState(() {
          _chosenSocietyName = newValue;
        });
      },
    );
  }
}
