import 'package:flutter/material.dart';

import 'MessagePage.dart';

class ChatDetail extends StatefulWidget {
  const ChatDetail({Key? key}) : super(key: key);

  @override
  State<ChatDetail> createState() => _ChatDetailState();
}

class _ChatDetailState extends State<ChatDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage('images/download (1).jpeg'),
            ),
            Padding(
            padding: EdgeInsets.only(left: 6.0),
            child: Text('usama'),)
          ],
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.video_call),
              onPressed: () {
                print("video call button");
              }),
              
          IconButton(
              icon: Icon(Icons.call),
              onPressed: () {
                print("call button");
              }),
              
          IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                print("search button");
              }),
          
        ],
      ),
      body:Column( 
        children: [
          Expanded(child:MessagePage()),
          Container(alignment: Alignment.bottomCenter,
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              Flexible(child: TextFormField(
                minLines: 1,
                maxLines: 5,
                decoration: InputDecoration( 
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Colors.grey,width: 0.0),)
                  ,
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Colors.grey,width: 0.0),)
                  ,
                hintText:"type A message",
                ),
              ),
            )
            ],
          ),)
        ],
      )
    );
  }
}
