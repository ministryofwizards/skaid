import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:skaid/model/card.dart';
import 'package:skaid/network/apis.dart';
import 'package:skaid/network/model/Scheme.dart';

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
              stops: [0.3,0.6,0.8]
             )
          ),
        ),
        Column(

          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

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

                child: StreamBuilder<QuerySnapshot>(
                    stream: getSchemes(),
                    builder: (context,snapshot){
                    if(snapshot.hasData){
                      return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount:snapshot.data.documents.length ,
                          itemBuilder: (context,index)=>Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                          margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                          elevation: 5.0,
                          borderOnForeground: true,
                          child: Container(
                              margin: EdgeInsets.all(20.0),
                              width: 250.0,
                              height: 150.0,
                              child: ListTile(
                                title: Text(Scheme.fromSnapShot(snapshot.data.documents[index]).scTitle),
                                subtitle: Text(Scheme.fromSnapShot(snapshot.data.documents[index]).scDesc),
                              )
                          )
                      )
                      );
                    }
                })
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

                child:StreamBuilder<QuerySnapshot>(
                    stream: getSchemes(),
                    builder: (context,snapshot){
                      if(snapshot.hasData){
                        return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount:snapshot.data.documents.length ,
                            itemBuilder: (context,index)=>Card(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                                elevation: 5.0,
                                borderOnForeground: true,
                                child: Container(
                                    margin: EdgeInsets.all(20.0),
                                    width: 250.0,
                                    height: 150.0,
                                    child: ListTile(
                                      title: Text(Scheme.fromSnapShot(snapshot.data.documents[index]).scTitle),
                                      subtitle: Text(Scheme.fromSnapShot(snapshot.data.documents[index]).scDesc),
                                    )
                                )
                            )
                        );
                      }
                    })
              ),
            )
          ],
        ),
        ]
      )
    );
  }
}
