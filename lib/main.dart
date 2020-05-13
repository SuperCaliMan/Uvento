import 'package:flutter/material.dart';
import 'package:uvento/splashscreen/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uvento',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          splashColor: Colors.transparent, //disable splash color on long click
          highlightColor:
              Colors.transparent //disable splash color on long click
          ),
      home: MyHomePage(title: 'home page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return splash();
  }
}
