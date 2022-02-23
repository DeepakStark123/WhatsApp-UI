import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/call_screen.dart';
import 'package:whatsapp/Screens/status_screen.dart';

import 'Screens/chat_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  final List<Tab> topTabs =const <Tab>[
    Tab(icon:Icon(Icons.camera_alt)),
    Tab(text: 'CHATS',),
    Tab(text: 'STATUS',),
    Tab(text: 'CALLS',),
  ];

  @override
  void initState() {
    _tabController = TabController(length:4,initialIndex:1,vsync: this)
    ..addListener(() {
      setState(() {});
    });
    super.initState();
  }

  _getFAB(){
    if(_tabController!.index ==1){
      return FloatingActionButton(onPressed: (){},
      backgroundColor:const Color(0xff25d366),
      child:const Icon(Icons.message,color: Colors.white,),
      );
    }
       else if(_tabController!.index ==2){
      return FloatingActionButton(onPressed: (){},
      backgroundColor:const Color(0xff25d366),
      child:const Icon(Icons.camera_alt,color: Colors.white,),
      );
    }
      else  if(_tabController!.index ==3){
      return FloatingActionButton(onPressed: (){},
      backgroundColor:const Color(0xff25d366),
      child:const Icon(Icons.call,color: Colors.white,),
      );
    }
    else{
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff075e54),
        title:const Text('WhatsApp'),
        actions: [
          IconButton(onPressed: (){}, icon:const Icon(Icons.search,),),
          IconButton(onPressed: (){}, icon:const Icon(Icons.more_vert),)
        ],
        bottom: TabBar(
         tabs: topTabs,
         controller:_tabController,
         indicatorColor: Colors.white,
        ),
      ),
      body:TabBarView(
        controller: _tabController,
        children:const [
          Text('Camera page'),
          ChatScreen(),
          StatusScreen(),
          CallScreen(),
      ],),
      floatingActionButton: _getFAB(),
    );
  }

}