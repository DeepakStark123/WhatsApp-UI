import 'package:flutter/material.dart';

class CallModel {
  final String name;
  final String time;
  final String avatar;
  final Icon? callType;
  CallModel({required this.name, required this.time, required this.avatar,   this.callType});

  static Icon callReceived =const Icon(
    Icons.call_received,
    size:18,
    color: Colors.green,
  );
    static Icon callMissed =const Icon(
    Icons.call_missed,
    size:18,
    color: Colors.red,
  );
}

List<CallModel> callModel = [
  CallModel(
   name: 'Deepak',
    time: '10:15',
    avatar: 'images/deepak3.jpg',
    callType: CallModel.callReceived,
  ),
  CallModel(
   name: 'Kripa',
   time: '10:20',
    avatar: 'images/meradesh.jpg',
    callType: CallModel.callMissed,
  ),
  CallModel(
   name: 'Mahendra',
   time: '5:03',
   avatar: 'images/sahaj.jpg',
   callType: CallModel.callReceived, 
  ),
  CallModel(
   name: 'Madhu',
   time: '9:53',
   avatar: 'images/payal.jpg',
   callType: CallModel.callReceived, 
  ),
];
