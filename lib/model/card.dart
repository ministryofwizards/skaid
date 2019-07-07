import 'package:flutter/material.dart';

class ModelCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
      elevation: 5.0,
      borderOnForeground: true,
      child: Container(
        margin: EdgeInsets.all(20.0),
        width: 250.0,
        height: 150.0,
        child: Center(
          child: Text("card"),
        ),
      )
    );
  }
}
