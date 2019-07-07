import 'package:cloud_firestore/cloud_firestore.dart';

class Category {

  int catId;
  String catName;
  String catDesc;
  String catUrl;

  Category.fromSnapShot(DocumentSnapshot snapshot) {
    catId = snapshot['cat_id'];
    catName = snapshot['cat_name'];
    catDesc = snapshot['cat_desc'];
    catUrl = snapshot['cat_url'];
  }
}