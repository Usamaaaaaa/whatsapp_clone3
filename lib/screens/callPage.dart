import 'package:flutter/material.dart';

import '../models/call_model.dart';
import 'Chatdetailpage.dart';
class CallPage extends StatefulWidget {
  const CallPage({ Key? key }) : super(key: key);

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: calldata.length,
          itemBuilder: (context, i) => Column(
                children: [
                  Divider(
                    height: 10.0,
                  ),
                  ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blueGrey,
                        backgroundImage:
                            AssetImage(calldata[i].avatr.toString()),
                      ),
                      title: Text(
                        calldata[i].name.toString(),
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      // subtitle: Text(calldata[i].msg.toString()),
                      trailing: Text(calldata[i].time.toString()),
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