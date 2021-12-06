import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const AuthenticationHome(),
    );
  }
}

class AuthenticationHome extends StatefulWidget {
  const AuthenticationHome({ Key? key }) : super(key: key);

  @override
  State<AuthenticationHome> createState() => _AuthenticationHomeState();
}

class _AuthenticationHomeState extends State<AuthenticationHome> {
    int _selectedIndex = 0;
    final List<Widget> _widgetOptions = <Widget>[
    const Text(
      'Index 0: Home',
    ),
    const Text(
      'Index 1: Business',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Authetication Flow'),),
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 0.7,
        width: MediaQuery.of(context).size.width * 1.0,
        child: Form(
          child: Column(
            children: [
        TextFormField(

        ),
        TextFormField(
          
        ),
        ElevatedButton(
          onPressed: (){},
          child: const Text('Login')
          )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            backgroundColor: Colors.green,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      
    );
  }
}


