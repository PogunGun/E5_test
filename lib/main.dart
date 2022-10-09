
import 'package:flutter/material.dart';
import 'package:test_e5_sys/views/card.dart';
import 'package:test_e5_sys/views/home_page.dart';

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
      initialRoute: '/',
      routes: {
        '/':(context)=>HomePage(),
        '/card':(context)=>ClickCard()
      },
    );
  }
}
