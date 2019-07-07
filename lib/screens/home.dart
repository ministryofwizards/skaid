import 'package:flutter/material.dart';
import 'package:skaid/screens/report_form.dart';
import 'package:skaid/screens/schemes.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: new AppBar(
          title: Text('Skaid'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'Schemes',
                icon: Icon(Icons.import_contacts),
              ),
              Tab(
                text: 'Reports',
                icon: Icon(Icons.assignment),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            //Global Meetup
            Schemes(),
            //Local Meetup
            ReportForm(),
          ],
        ),
      ),
    );
  }
}
