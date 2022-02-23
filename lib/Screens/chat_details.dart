import 'package:flutter/material.dart';

import 'message_page.dart';

class ChatDetailsPage extends StatefulWidget {
  const ChatDetailsPage({Key? key}) : super(key: key);

  @override
  _ChatDetailsPageState createState() => _ChatDetailsPageState();
}

class _ChatDetailsPageState extends State<ChatDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff075e54),
        titleSpacing:0.0,
        title: Row(
          children:const [
             CircleAvatar(
          backgroundColor: Colors.blueGrey,
          radius: 17,
          backgroundImage: AssetImage('images/deepak3.jpg'),
        ),
             Padding(
               padding: EdgeInsets.only(left: 10.0),
               child: Text(
                'Deepak',
                style: TextStyle(fontWeight: FontWeight.bold),
            ),
             ),
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.video_call,),),
          IconButton(onPressed: (){}, icon: const Icon(Icons.call,),),
          IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert),),
        ],
      ),
      body: Column(
        children: [
         const Expanded(child:MessagePage()),
         Container(
           alignment: Alignment.bottomCenter,
           padding:const EdgeInsets.all(5),
           child: Row(children: [
             Flexible(child:TextFormField(
               decoration:   InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Type a Message ...',
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.only(
                        left: 14.0, bottom: 6.0, top: 8.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black,width: 0.0,),
                      borderRadius: BorderRadius.circular(20.0),

                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:const BorderSide(color: Colors.black,width: 0.0,),
                      borderRadius: BorderRadius.circular(20.0),

                    ),
                  ),
             ))
           ],),
         ),
        ],
      ),
    );
  }
}
