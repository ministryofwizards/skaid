import 'dart:async';

import 'package:flutter/material.dart';
import 'package:skaid/screens/schemes.dart';

class SplashScreen extends StatefulWidget {
@override
SplashScreenState createState() {
  return new SplashScreenState();
}
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadTimer();
  }

  Future<Timer> loadTimer() async {
    return Timer(Duration(seconds: 5), navigate);
  }

  navigate() {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => Schemes()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        color: Colors.black,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8.0),
        child: Image.asset("assets/images/logo.png"),
      ),
    );
  }
}
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
