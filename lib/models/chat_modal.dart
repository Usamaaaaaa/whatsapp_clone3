
List<ChatModel> chatdata = [
  ChatModel(
    name:"usama",
    msg:"hy",
    time:"10:00",
    avatr:"",
  ),
  ChatModel(
    name: "ali",
    msg: "he",
    time: "10:00",
    avatr: "",
  ),
  ChatModel(
    name: "umer",
    msg: "hi",
    time: "10:00",
    avatr: "images/download (1).jpeg",
  ),
];


class ChatModel {
 final String ?name;
  final String ?msg;
  final String ?time;
  final String ?avatr;
  ChatModel({this.name, this.msg, this.time, this.avatr});
}
