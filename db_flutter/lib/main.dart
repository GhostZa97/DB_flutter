import 'package:db_flutter/form_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:db_flutter/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: home_screen(),
        debugShowCheckedModeBanner: false);
  }
}


