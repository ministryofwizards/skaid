import 'package:flutter/material.dart';

class ReportForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: new Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Image.asset(
              'assets/images/placeholder.png',
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Department',
                style: Theme.of(context).textTheme.display1,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Description',
                style: Theme.of(context).textTheme.display1,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                minLines: null,
                maxLines: null,
                expands: true,
              ),
            ),
          ),
          RaisedButton(
            child: Text("Submit"),
            color: Colors.deepPurple,
            textColor: Colors.white,
            shape: const BeveledRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(7.0)),
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
