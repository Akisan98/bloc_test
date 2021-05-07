import 'package:bloc_test/pages/homepage.dart';
import 'package:flutter/material.dart';

import 'blocs/show_singleton.dart';
import 'pages/navbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NavBar(),
    );
  }
}

