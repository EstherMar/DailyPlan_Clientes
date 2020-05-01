import 'dart:async';
import 'package:flutter/material.dart';
import 'LoginScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DailyPlan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void initState() {
    super.initState();
    startTimer();
  }

  startTimer () async {
    var duration = Duration (seconds: 4);
    return Timer(duration, route);
  }

  route () {
    Navigator.pushReplacement(context, MaterialPageRoute (
      builder: (context) => LoginScreen()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
           image: DecorationImage (
             image: AssetImage ("assets/images/portadaclientes.png"),
                   fit: BoxFit.cover
           )
          ),
        ),
      )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
