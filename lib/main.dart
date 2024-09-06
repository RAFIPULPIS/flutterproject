import 'package:aplikasi2/ListViewPage.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'DetailPage.dart';
import 'ListViewPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Menentukan route awal aplikasi
      initialRoute: '/home',
      routes: {
       
        '/home': (context) => HomePage(),
        '/detail': (context) => DetailPage(),
        '/listview': (context) => ListViewPage(),
      },
    );
  }
}
