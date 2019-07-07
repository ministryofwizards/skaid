import 'package:cloud_firestore/cloud_firestore.dart';

Stream<QuerySnapshot> getCategories() {
  return Firestore.instance.collection('categories').snapshots();
}

Stream<QuerySnapshot> getNgos() {
  return Firestore.instance.collection('ngos').snapshots();
}

Stream<QuerySnapshot> getSchemes() {
  return Firestore.instance.collection('schemes').snapshots();
}