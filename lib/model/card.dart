import 'package:flutter/material.dart';

class ModelCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(40.0)),
      child: Card(margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
        elevation: 5.0,
        borderOnForeground: true,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(80.0)),
          child: Container(
            margin: EdgeInsets.all(20.0),
            width: 250.0,
            height: 150.0,
            child: ListTile(
              title: Text("Scheme Name"),
              subtitle: Text("discription"),
            )
          ),
        )
      ),
    );
  }
}
