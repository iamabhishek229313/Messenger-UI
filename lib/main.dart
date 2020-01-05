import 'package:flutter/material.dart';
import 'package:messenger_ui/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Messenger UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        secondaryHeaderColor: Colors.indigo.shade900,
      ),
      home: HomeScreen(),
    );
  }
}
