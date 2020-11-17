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
      debugShowCheckedModeBanner: false,
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
        backgroundColor: Color.fromRGBO(21, 33, 33,1),
      appBar: AppBar(
        centerTitle: false,
        title: Text("WhatsApp",
        style: TextStyle(fontWeight: FontWeight.bold,
        color: Color.fromRGBO(161, 161, 161, 1)
        ),
        ),
        backgroundColor: Color.fromRGBO(24, 39, 46,1),
        bottom: TabBar(
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.photo_camera),
              iconMargin: EdgeInsets.symmetric(horizontal:1.0),
            ),
             Tab(
              child: Text("CHATS", style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromRGBO(161, 161, 161, 1)),),
            ),
             Tab(
              child: Text("STATUS",style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromRGBO(161, 161, 161, 1)),),
            ),
            Tab(
              child: Text("CALLS",style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromRGBO(161, 161, 161, 1)),),
            ),
         
        ],

        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Color.fromRGBO(161, 161, 161, 1),
            onPressed: (){}),
          IconButton(
            icon: Icon(Icons.more_vert_rounded), 
            color: Color.fromRGBO(161, 161, 161, 1),
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
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.message),
        backgroundColor:Color.fromRGBO(64, 168, 116,1),
        ),
      ),
    );
  }
}