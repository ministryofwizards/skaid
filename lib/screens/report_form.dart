import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker_modern/image_picker_modern.dart';

import '../style.dart';



class ReportForm extends StatefulWidget {
  @override
  _ReportFormState createState() => _ReportFormState();
}

class _ReportFormState extends State<ReportForm> {

  File _image;

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
                Color.fromRGBO(58, 28, 113,1),
                Color.fromRGBO(215, 109, 119,1),
                Color.fromRGBO(255, 175, 123,1)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.3,0.6,0.8]
          )
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(

              flex: 1,
              child: _image == null
                  ? Image.asset('assets/images/placeholder.png',fit: BoxFit.cover,)
                  : Image.file(_image,fit: BoxFit.fitWidth,),
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
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Description',
                  style:sectionLabel,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12.0))),
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
              child: Text("Submit"),
              color: Colors.deepPurple,
              textColor: Colors.white,
              shape: const BeveledRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(7.0)),
              ),
              onPressed: () {
                getImage();
              },
            )
          ],
        ),
      ),
    );
  }
}
