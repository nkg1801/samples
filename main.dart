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
          children: const<Widget>[
            Text('Home Page',style: TextStyle(fontSize: 36)),
          ],
        ),
      ),
        bottomNavigationBar:BottomNavigationBar(
          type: BottomNavigationBarType.fixed ,
          items: const[
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications, color: Colors.black),
                label: 'Notifications'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_shopping_cart, color: Colors.black),
                label: 'Cart'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle, color: Colors.black),
                label:'Profile'
            ),
          ],
          onTap: (index){
            switch(index) {
              case 0:
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return NotificationPageWidget();
                    }));
                break;

              case 1:
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return CartPageWidget();
                      }));
                  break;

              case 2:
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return ProfilePageWidget();
                    }));
                break;
            }
          },
        )
    );
  }
}

class NotificationPageWidget extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return _NotificationPageWidgetState();
  }
}

class _NotificationPageWidgetState extends State<NotificationPageWidget>
{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Notification Page'),),
      body: const Center(child: Text('Notification Page',style: TextStyle(fontSize: 36))),
    );
  }
}

class CartPageWidget extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return _CartPageWidgetState();
  }
}

class _CartPageWidgetState extends State<CartPageWidget>
{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Cart Page'),),
      body: const Center(child: Text('Cart Page',style: TextStyle(fontSize: 36))),
    );
  }
}

class ProfilePageWidget extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return _ProfilePageWidgetState();
  }
}

class _ProfilePageWidgetState extends State<ProfilePageWidget>
{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(title: const Text('Profile Page'),),
      body: const Center(child: Text('Profile page', style: TextStyle(fontSize: 36),),)
    );
  }
}


