import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';


class ReceiverBubble extends StatelessWidget {
  
  final String receiveMessage;

  // ignore: use_key_in_widget_constructors
  const ReceiverBubble({required this.receiveMessage});

  @override
  Widget build(BuildContext context) {
    return Bubble(
      margin:const BubbleEdges.only(top: 10),
      alignment: Alignment.topLeft,
      nip: BubbleNip.leftTop,
      child:Text(receiveMessage),
    );
  }
}

class SenderBubble extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const SenderBubble({
    required this.senderMessage
  }) ;
  final String senderMessage;
  @override
  Widget build(BuildContext context) {
    return Bubble(
      margin:const BubbleEdges.only(top: 10),
      alignment: Alignment.topRight,
      nip: BubbleNip.rightTop,
      color:const Color.fromRGBO(225, 255, 199, 1.0),
      child:Text(senderMessage, textAlign: TextAlign.right),
    );
  }
}

class DateBubble extends StatelessWidget {
// ignore: use_key_in_widget_constructors
const DateBubble({ required this.date});
 final String date;
  @override
  Widget build(BuildContext context) {
    return Bubble(
      alignment: Alignment.center,
      color:const Color.fromRGBO(212, 234, 244, 1.0),
      child: Text(date,
          textAlign: TextAlign.center, style: const TextStyle(fontSize: 11.0)),
    );
  }
}
