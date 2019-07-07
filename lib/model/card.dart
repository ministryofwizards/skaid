import 'package:flutter/material.dart';
import 'package:skaid/network/model/Scheme.dart';

class ModelCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
        margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
      elevation: 5.0,
      borderOnForeground: true,
      child: Container(
        margin: EdgeInsets.all(20.0),
        width: 250.0,
        height: 150.0,
        child: ListTile(
          title: Text("hello"),
          subtitle: Text("discription"),
        )
      )
    );
  }
}
