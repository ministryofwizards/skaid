import 'package:flutter/material.dart';
import 'package:skaid/network/model/Scheme.dart';

class Screen1 extends StatelessWidget {


  final Scheme obj;
  Screen1({this.obj});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple[600],
        resizeToAvoidBottomPadding: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(80.0),
          child: FloatingActionButton(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 260.0),
          child: Center(
            child: Card(
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: ListView(
                  physics:PageScrollPhysics(),
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        obj.scTitle,
                        style: TextStyle(
                          fontSize: 26.0,
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      subtitle: Text(
                        obj.scDesc,
                        maxLines: 20,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
