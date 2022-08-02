// ignore: file_names
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/ChatPage.dart';
import 'package:whatsapp_clone/screens/callPage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

@override
class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _Controller;

  final List<Tab> toptab = <Tab>[
    Tab(icon: Icon(Icons.camera_alt)),
    Tab(text: 'CHATS'),
    Tab(text: 'STATUS'),
    Tab(text: 'CALLS'),
  ];
  @override
  void initState() {
    _Controller = TabController(length: 4, initialIndex: 1, vsync: this)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print("search button");
              }),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {
            
                print("3 dot button");
          })
        ],
        bottom: TabBar(
            controller: _Controller,
            indicatorColor: Colors.white,
            tabs: toptab),
      ),
      body: TabBarView(
        controller: _Controller,
        children: [
          Text('Camera'),
          ChatPage(),
          Text('Status'),
          CallPage(),
        
      ],)
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
