import 'package:cloud_firestore/cloud_firestore.dart';

class Request {
  int reqId;
  bool requestStatus;
  String orgName;
  String userComments;
  String imgUrl;

  Request() {}

  Request.fromSnapShot(DocumentSnapshot snapshot) {
    reqId = snapshot['req_id'];
    requestStatus = snapshot['request_status'];
    orgName = snapshot['org_name'];
    userComments = snapshot['user_comments'];
    imgUrl = snapshot['img_url'];
  }
}
