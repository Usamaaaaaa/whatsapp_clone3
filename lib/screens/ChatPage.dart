import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat_modal.dart';

import 'Chatdetailpage.dart';

// import 'package:';
class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: chatdata.length,
          itemBuilder: (context, i) => Column(
                children: [
                  Divider(
                    height: 10.0,
                  ),
                  ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blueGrey,
                        backgroundImage:
                            AssetImage(chatdata[i].avatr.toString()),
                      ),
                      title: Text(
                        chatdata[i].name.toString(),
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(chatdata[i].msg.toString()),
                      trailing: Text(chatdata[i].time.toString()),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChatDetail()));
                      })
                ],
              )),
    );
  }
}
