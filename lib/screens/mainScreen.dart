import 'package:flutter/material.dart';
import 'package:real_chat_flutter/ChatPage.dart';

class MainScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black,),
          onPressed: () {},
        ),
        title: Image(image: AssetImage('assets/images/logo.png'),width: 200,),
      ),
      body: ChatPage(),);
  }
}