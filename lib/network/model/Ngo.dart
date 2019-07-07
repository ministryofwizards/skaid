import 'package:cloud_firestore/cloud_firestore.dart';

class Ngo {
  
  int catId;
  String ngoName;
  String phone;

  Ngo() {}

  Ngo.fromSnapShot(DocumentSnapshot snapshot) {
    catId = snapshot['cat_id'];
    ngoName = snapshot['ngo_name'];
    phone = snapshot['phone'];
  }

  List<Ngo> getNgoByCatId(List<DocumentSnapshot> snapshots, int catId) {
    List<Ngo> ngosForCatId = new List();
    for (int i; i < snapshots.length; i++) {
      DocumentSnapshot snapshot = snapshots[i];
      Ngo ngo = new Ngo();
      ngo.catId = snapshot['cat_id'];
      ngo.ngoName = snapshot['ngo_name'];
      ngo.phone = snapshot['phone'];
      if (ngo.catId == catId) {
        ngosForCatId.add(ngo);
      }
    }
    return ngosForCatId;
  }

  List<Ngo> getAllNgos(List<DocumentSnapshot> snapshots, int catId) {
    List<Ngo> ngosForCatId = new List();
    for (int i; i < snapshots.length; i++) {
      DocumentSnapshot snapshot = snapshots[i];
      Ngo ngo = new Ngo();
      ngo.catId = snapshot['cat_id'];
      ngo.ngoName = snapshot['ngo_name'];
      ngo.phone = snapshot['phone'];
      ngosForCatId.add(ngo);
    }
    return ngosForCatId;
  }
}
