import 'package:flutter/material.dart';
import 'package:project_april/views/widget_tree.dart';
import 'package:project_april/views/widgets/navbar_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
    ),
    ),
      home: WidgetTree(),
    );
  }
}

