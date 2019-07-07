import 'package:cloud_firestore/cloud_firestore.dart';

class Scheme {

  String scTitle;
  String scDesc;


  Scheme.fromSnapShot(DocumentSnapshot snapshot) {
    scTitle = snapshot['sc_title'];
    scDesc = snapshot['sc_desc'];
  }
}