import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
      brightness: Brightness.dark,
      ),
      ),
      home: MyWidget()
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Flutter mapp'),
        centerTitle: true,
      ),
      body: currentIndex == 0
          ? Center(
            child: Text('Home'),
          )
          : Center(
            child: Text('Profile'),
          ),

      bottomNavigationBar: NavigationBar(destinations: [
        NavigationDestination(icon: Icon(Icons.home),
          label: 'Home',
        ),
        NavigationDestination(icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      onDestinationSelected: (int value) {
        setState(() {
          currentIndex = value;
        });
      },
        selectedIndex: currentIndex,

      ),
    );
  }
}

