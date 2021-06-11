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
      home: const MyHomePage(title: 'Flutter buttons'),
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
            
            ElevatedButton(
              child: const Text('Elevated Button'),
              onPressed: () 
              {
                //to do:
              },
            ),
            
            const SizedBox(
              height: 20,
            ),
            
            OutlinedButton(
                onPressed: () 
                {
                  //todo:
                }, 
                child: const Text('Outline Button')),
            
            const SizedBox(
              height: 20,
            ),
            
            TextButton(
            onPressed: () 
            {
              //todo
            }, 
            child: const Text('Text Button')),
          ],
        ),
      ),
    );
  }
}
