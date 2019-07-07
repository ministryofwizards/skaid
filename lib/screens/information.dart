import 'package:flutter/material.dart';
import 'package:skaid/network/model/Scheme.dart';
import 'package:url_launcher/url_launcher.dart';

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
          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 60.0),
          child: Center(
            child: Card(
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: ListView(
                  physics:PageScrollPhysics(),
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  children: <Widget>[
                    ListTile(
                      title: Text("\n\n"+
                        obj.scTitle,
                        style: TextStyle(
                          fontSize: 26.0,
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      subtitle: Text("\n\n\n"+
                        obj.scDesc,
                        maxLines: 20,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    InkWell(
                      onTap: _openURL,
                      child: Text("\n\nPhone :"+obj.phone,
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black,
                        fontSize: 24),),
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
  Future _openURL() async{
    print('open click');
    int ph = int.tryParse(obj.phone);
    var url ="tel:$ph";
    if(await canLaunch(url))
      launch(url);
    else
      print('cant open launcher');
  }
}

