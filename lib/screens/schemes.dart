import 'package:flutter/material.dart';
import 'package:skaid/model/card.dart';

class Schemes extends StatefulWidget {
  @override
  _SchemesState createState() => _SchemesState();
}

class _SchemesState extends State<Schemes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height:30.0,
          ),
          Text("Relevant",textAlign:TextAlign.start,style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 20,

          ),),
          Container(

            height: 300,
            width: MediaQuery.of(context).size.width,
            color: Colors.redAccent,
          ),
          Text("All",textAlign:TextAlign.start,style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 20,

          ),),
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            color: Colors.blueAccent,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 20.0),
              children: <Widget>[
                ModelCard(),
                ModelCard(),
                ModelCard(),
              ],
            ),
          )
        ],
      )
    );
  }
}
