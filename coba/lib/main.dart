import 'package:flutter/material.dart';
import 'home_page.dart';
import 'profile_page.dart'; 
void main() {
  runApp(MyApp());
}

/// Widget utama (StatelessWidget)
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My UTDI',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/profile': (context) => ProfilePage(), // route untuk ProfilePage
      },
    );
  }
}
