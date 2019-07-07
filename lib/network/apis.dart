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

Stream<QuerySnapshot> getRequests() {
  return Firestore.instance.collection('requests').snapshots();
}

Future<Map<String, dynamic>> addRequestWithImg(int reqId, bool requestStatus,
    String orgName, String userComments, String imgUrl) {
  return Firestore.instance.runTransaction((transaction) async {
    await transaction
        .set(Firestore.instance.collection("requests").document(), {
      'req_id': reqId,
      'request_status': requestStatus,
      'org_name': orgName,
      'user_comments': userComments,
      'img_url': imgUrl,
    });
  });
}

Future<Map<String, dynamic>> addRequest(
    int reqId, bool requestStatus, String orgName, String userComments) {
  return Firestore.instance.runTransaction((transaction) async {
    await transaction
        .set(Firestore.instance.collection("requests").document(), {
      'req_id': reqId,
      'request_status': requestStatus,
      'org_name': orgName,
      'user_comments': userComments
    });
  });
}
