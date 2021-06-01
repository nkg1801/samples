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
  final _textEditingControllerName = TextEditingController();
  var _enteredText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        margin: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _textEditingControllerName,
              decoration: const InputDecoration(labelText: 'Enter your name'),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Your entered text is displayed below',
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              _enteredText,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 36),
            ),
            const SizedBox(height: 30.0),
            ElevatedButton(
                onPressed: _getTextFromTextField,
                child: const Text('Get the text from the text field')),

            const SizedBox(height: 20.0,),

            ElevatedButton(onPressed: _setTextToTextField, child: const Text('Set \' I am learning flutter \' to TextField'))

          ],
        ),
      ),
    );
  }

  _getTextFromTextField() {
    setState(() {
      _enteredText = _textEditingControllerName.text;
    });
  }

  _setTextToTextField()
  {
    setState(() {
      _textEditingControllerName.text = 'I am learning flutter';
    });
  }
}
