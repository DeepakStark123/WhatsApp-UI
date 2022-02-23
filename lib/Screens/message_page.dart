import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:whatsapp/widgets.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance!.addPostFrameCallback((_){
      scrollController.jumpTo(scrollController.position.maxScrollExtent);
    });
    return ListView(
      children:const [
         SizedBox(height: 5,),
         DateBubble(date:'Tommorow'),
         SenderBubble(senderMessage: 'Hello Deepak',),
         ReceiverBubble(receiveMessage: 'Hi Bro',),
         SenderBubble(senderMessage: 'How r u'),
         ReceiverBubble(receiveMessage: 'i Am fine'),
         SenderBubble(senderMessage: 'Good'),
         DateBubble(date: 'Today'),
         SenderBubble(senderMessage: 'Hello Deepak',),
         ReceiverBubble(receiveMessage: 'Hi Bro',),
         SenderBubble(senderMessage: 'How r u'),
         ReceiverBubble(receiveMessage: 'i Am fine'),
         SenderBubble(senderMessage: 'Good'),
         ReceiverBubble(receiveMessage: 'Had u dinner'),
         SenderBubble(senderMessage: 'Ya I had '),
         SenderBubble(senderMessage: 'What About u'),
         ReceiverBubble(receiveMessage: 'I also Had'),
         SenderBubble(senderMessage: 'Good'),
         SenderBubble(senderMessage: 'How is your day was going on'),
         ReceiverBubble(receiveMessage: 'thik hi gya yaar'),
         ReceiverBubble(receiveMessage: 'tu apna bta'),
         SenderBubble(senderMessage: 'Mera bhi thik hi gya yaar'),
         ReceiverBubble(receiveMessage: 'good'),

      ],
    );
  }
}

