import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: newApp(),
    );
  }
}

// ignore: camel_case_types
class newApp extends StatefulWidget {
  const newApp({super.key});

  @override
  State<newApp> createState() => _newAppState();
}

// ignore: camel_case_types
class _newAppState extends State<newApp> {
  int onClick = 0;

  final List navigatePage = [Red(), Blue(), Pink(), Green()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Day  4 Navigation"),
      ),

      body: navigatePage[onClick],
      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        type: BottomNavigationBarType.shifting,
        currentIndex: onClick,
        onTap: (index) {
          setState(() {
            onClick = index;
          });
        }, // ignore: prefer_const_literals_to_create_immutables
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Red',
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit),
              label: 'Blue',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Green',
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.wifi),
              label: 'Pink',
              backgroundColor: Colors.pink),
        ],
      ),
    );
  }
}

class Blue extends StatelessWidget {
  const Blue({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.red,
        child: Center(
          child: Text('Like'),
        ));
  }
}

class Green extends StatelessWidget {
  const Green({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(
        child: Text("Share"),
      ),
    );
  }
}

class Pink extends StatelessWidget {
  const Pink({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[300],
      child: Center(child: Text('Subscribe to ')),
    );
  }
}

class Red extends StatelessWidget {
  const Red({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Text('Who? '),
      ),
    );
  }
}
