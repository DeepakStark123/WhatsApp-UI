import 'package:flutter/material.dart';
import 'package:whatsapp/Models/users_model.dart';
import 'chat_details.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: userModel.length,
      itemBuilder: (context, i) => Column(
        children: [
          const Divider(
            height: 5,
            thickness: 0.0,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blueGrey,
              radius: 25,
              backgroundImage: AssetImage(userModel[i].avatar),
            ),
            title: Text(
              userModel[i].name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              userModel[i].message,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
            trailing: Text(
              userModel[i].time,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const ChatDetailsPage()),);
            },
          )
        ],
      ),
    );
  }
}
