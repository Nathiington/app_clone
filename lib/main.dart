import 'package:app_clone/Tabs/Calls.dart';
import 'package:app_clone/Tabs/Camera.dart';
import 'package:app_clone/Tabs/Chats.dart';
import 'package:app_clone/Tabs/Status.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, 
      initialIndex: 1,
      child: Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("WhatsApp",
        style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFF075E54),
        bottom: TabBar(
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.photo_camera),
              iconMargin: EdgeInsets.symmetric(horizontal:1.0),
            ),
             Tab(
              child: Text("CHATS", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
             Tab(
              child: Text("STATUS",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Tab(
              child: Text("CALLS",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
         
        ],

        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){}),
          IconButton(
            icon: Icon(Icons.more_vert_rounded), 
            onPressed: (){})
        ]
      ),
      body: TabBarView(
        children: <Widget>[
          Camera(),
          Chats(),
          Status(),
          Calls(),
        ],
      ),
      ),
    );
  }
}