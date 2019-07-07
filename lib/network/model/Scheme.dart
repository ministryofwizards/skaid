import 'package:cloud_firestore/cloud_firestore.dart';

class Scheme {
  String scTitle;
  String scDesc;
  String phone;

  Scheme() {}

  Scheme.fromSnapShot(DocumentSnapshot snapshot) {
    scTitle = snapshot['sc_title'];
    scDesc = snapshot['sc_desc'];
    phone = snapshot['phone'];
  }
}
