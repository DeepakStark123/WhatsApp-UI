import 'package:flutter/material.dart';
import 'package:whatsapp/Models/status_model.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blueGrey,
          radius: 25,
          backgroundImage: AssetImage('images/deepak3.jpg'),
        ),
        title: Text(
          'My Status',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          'Tap to add status update',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 15,
          ),
        ),
      ),
      const Divider(),
      const Padding(
        padding: EdgeInsets.only(left: 20.0),
        child: Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Recent updates',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black54,
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      Flexible(
        child: ListView.builder(
            itemCount: statusModel.length,
            itemBuilder: (context, i) => Column(
                  children: [
                    ListTile(
                       leading: CircleAvatar(
              backgroundColor: Colors.blueGrey,
              radius: 25,
              backgroundImage: AssetImage(statusModel[i].avatar),
            ),
            title: Text(
              statusModel[i].name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              statusModel[i].time,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
                    ),
                    const Divider( height: 5,),
                  ],
                )),
      ),
    ]);
  }
}
