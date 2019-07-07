import 'package:flutter/material.dart';
import 'package:skaid/screens/report_form.dart';
import 'package:skaid/screens/report_status.dart';
import 'package:skaid/screens/schemes.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: new AppBar(
          backgroundColor: Color.fromRGBO(58, 28, 113,1),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("assets/images/logo2.png"),
              Text("Skaid")
            ],
          ),
         
          bottom: TabBar(
            indicatorColor:  Color.fromRGBO(255, 175, 123,1),
            tabs: <Widget>[
              Tab(
                text: 'Schemes',
                icon: Icon(Icons.import_contacts,),
              ),
              Tab(
                text: 'Reports',
                icon: Icon(Icons.assignment,),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            //Global Meetup
            Schemes(),
            //Local Meetup
            ReportStatus(),
          ],
        ),
      ),
    );
  }
}
