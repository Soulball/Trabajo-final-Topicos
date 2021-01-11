import 'package:flutter/material.dart';
import 'package:log_in/pages/home_page.dart';
import 'package:log_in/pages/second_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Log in',
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.redAccent[700],
          accentColor: Colors.redAccent[200]),
      initialRoute: "/",
      routes: {
        "/": (BuildContext context) => HomePage(),
        "/second": (BuildContext context) => SecondPage()
      },
      //home: HomePage(),
    );
  }
}
