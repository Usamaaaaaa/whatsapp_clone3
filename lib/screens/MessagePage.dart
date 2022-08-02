import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';
import 'package:flutter/scheduler.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  static const senderStyle = BubbleStyle(
    margin: BubbleEdges.only(top: 10),
    nip: BubbleNip.rightTop,
    color: Color.fromRGBO(225, 255, 199, 1.0),
  );
  static const recieverStyle = BubbleStyle(
    margin: BubbleEdges.only(top: 10),
    nip: BubbleNip.leftTop,
  );
  ScrollController _myScrollcontroller = ScrollController();
  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance?.addPostFrameCallback((_) {
      _myScrollcontroller.jumpTo(_myScrollcontroller.position.maxScrollExtent);
    });
    return ListView(
      children: [
        Bubble(
          color: Color.fromRGBO(212, 234, 244, 1.0),
          child: Text('TODAY',
              textAlign: TextAlign.center, style: TextStyle(fontSize: 11.0)),
        ),
        Bubble(
          style: senderStyle,
          child: Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          style: recieverStyle,
          child: Text('Hi, developer!'),
        ),
        Bubble(
          style: senderStyle,
          child: Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          style: recieverStyle,
          child: Text('Hi, developer!'),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          nip: BubbleNip.no,
          color: Color.fromRGBO(212, 234, 244, 1.0),
          child: Text('TOMORROW',
              textAlign: TextAlign.center, style: TextStyle(fontSize: 11.0)),
        ),
      ],
    );
  }
}
