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
      home: const MyHomePage(title: 'TextField widget demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final bool _isNameEmpty = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: _formWidget());
  }

  _formWidget() {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(labelText: 'Your ID'),
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Name',
                errorText: _isNameEmpty ? 'Please input your name' : null,
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue)),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)),
                prefixIcon:
                    IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
                suffixIcon:
                    IconButton(onPressed: () {}, icon: const Icon(Icons.clear)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Address',
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue)),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)),
                suffixIcon: IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.clear),
                ),
              ),
            ),
          ],
        ));
  }
}
