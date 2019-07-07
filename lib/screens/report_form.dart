import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker_modern/image_picker_modern.dart';
import 'package:skaid/network/apis.dart';

import '../style.dart';

const List<String> _ngoCategories = <String>[
  'flake',
  'cut',
  'fragment',
  'splinter',
  'nick',
  'fry',
  'solder',
  'cash in',
  'eat',
];

class ReportForm extends StatefulWidget {
  @override
  _ReportFormState createState() => _ReportFormState();
}

class _ReportFormState extends State<ReportForm> {
  File _image;

  final _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(58, 28, 113, 1),
                  Color.fromRGBO(215, 109, 119, 1),
                  Color.fromRGBO(255, 175, 123, 1)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.3, 0.6, 0.8])),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: _image == null
                  ? Image.asset(
                      'assets/images/placeholder.png',
                      fit: BoxFit.cover,
                    )
                  : Image.file(
                      _image,
                      fit: BoxFit.fitWidth,
                    ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Department',
                  style: sectionLabel,
                ),
              ),
            ),
            /*Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Department',
                  style: sectionLabel,
                ),
              ),
            ),*/
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Description',
                  style: sectionLabel,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _textController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0))),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                  minLines: null,
                  maxLines: null,
                  expands: true,
                ),
              ),
            ),
            RaisedButton(
              child: Text("Add Photo"),
              color: Colors.purpleAccent,
              textColor: Colors.white,
              shape: const BeveledRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(7.0)),
              ),
              onPressed: () {
                getImage();
              },
            ),
            RaisedButton(
              child: Text("Submit"),
              color: Colors.deepPurple,
              textColor: Colors.white,
              shape: const BeveledRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(7.0)),
              ),
              onPressed: () {
                addRequest(1, false, "orgName", _textController.text)
                    .then((result) {
                  Navigator.pop(context);
                });
              },
            )
          ],
        ),
      ),
    );
  }
}

/*final List<Widget> tiles = <Widget>[
      const SizedBox(height: 8.0, width: 0.0),
      _ChipsTile(label: 'Available Materials (Chip)', children: chips),
      _ChipsTile(label: 'Available Tools (InputChip)', children: inputChips),
      _ChipsTile(label: 'Choose a Material (ChoiceChip)', children: choiceChips),
      _ChipsTile(label: 'Choose Tools (FilterChip)', children: filterChips),
      _ChipsTile(label: 'Perform Allowed Action (ActionChip)', children: actionChips),
      const Divider(),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            _createResult(),
            style: theme.textTheme.title,
          ),
        ),
      ),
];*/
