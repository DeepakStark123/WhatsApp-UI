import 'package:flutter/material.dart';
import 'package:whatsapp/Models/call_model.dart';


class CallScreen extends StatefulWidget {
  const CallScreen({ Key? key }) : super(key: key);

  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callModel.length,
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
              backgroundImage: AssetImage(callModel[i].avatar),
            ),
            title: Text(
              callModel[i].name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle:Row(children: [
              Container(
                child: callModel[i].callType,
              ),
              Text(
              callModel[i].time,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
            ],),
            trailing: const Icon(Icons.call,size: 25,),
            onTap: (){},
          )
        ],
      ),
    );

  }
}