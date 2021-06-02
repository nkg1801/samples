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
        body: Container(

          margin: const EdgeInsets.only(top:40),
          child: Column(

            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Car Widget Demo',style: TextStyle(fontSize: 26)),
              _cardWidget(),
            ],
          ),
        ),
    );
  }

  Widget _cardWidget()
  {
    String imagePath = 'images/user.png';
    double leftMargin = 10;

    return Card(
      color: Colors.white54,
      margin: const EdgeInsets.all(10.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: const EdgeInsets.only(top: 20, bottom: 10),
                child: Image.asset(
                  imagePath,
                  height: 60.0,
                  width: 60.0,
                  fit: BoxFit.fill,
                )),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                      constraints:  BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width - 142),
                      margin: EdgeInsets.only(left: leftMargin, top: 10),
                      child: const Text('Nand Kishore Gupta')),

                  Container(
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width - 142),
                      margin: EdgeInsets.only(left: leftMargin),
                      decoration: const BoxDecoration(),
                      child: const Text('Mobile Number: 81X70-XXXXX')),

                  Container(
                      constraints:  BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width - 142),
                      margin: EdgeInsets.only(left: leftMargin, top: 10),
                      child: const Text('Company: aedugami')),

                  Container(
                      constraints:  BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width - 142),
                      margin: EdgeInsets.only(left: leftMargin, top: 5),
                      child: const Text('Working since: 12-Dec-2020')),

                  Container(
                      constraints:  BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width - 142),
                      margin: EdgeInsets.only(
                          left: leftMargin, top: 15, bottom: 10),
                      child: const Text('Job Title: Technical Specialist')),

                ]),
          ]),
    );
  }
}
