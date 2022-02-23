import 'package:flutter/material.dart';
import 'homepage.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Whatsapp",
      theme: ThemeData(
        primaryColor: const Color(0xff075e54),
      ),
      home:const HomePage());
  }
}

