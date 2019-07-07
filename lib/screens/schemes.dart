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

      body: Stack(
        children:<Widget>[
          Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromRGBO(58, 28, 113,1),
              Color.fromRGBO(215, 109, 119,1),
              Color.fromRGBO(255, 175, 123,1)
            ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.2,0.5,0.7]
             )
          ),
        ),
        Column(

          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height:40.0,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text("  \n \t \t \t Relevant",textAlign:TextAlign.start,style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontSize: 20,

              ),),
            ),
            Expanded(
              flex: 1,
              child: Container(

                height: 300,
                width: MediaQuery.of(context).size.width,

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
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(" \t \t \t All",textAlign:TextAlign.start,style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Colors.white

              ),),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 300,
                width: MediaQuery.of(context).size.width,

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
              ),
            )
          ],
        ),
        ]
      )
    );
  }
}
