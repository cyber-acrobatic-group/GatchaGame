import 'package:flutter/material.dart';

import 'Page/HomePage.dart';
import 'Page/GatchaPage.dart';
import 'Page/ResultPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gatcha Game',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder> {
        '/home': (BuildContext context) => HomePage(),
        '/gatcha': (BuildContext context) => GatchaPage(),
        '/result': (BuildContext context) => ResultPage(),
      },
    );
  }
}