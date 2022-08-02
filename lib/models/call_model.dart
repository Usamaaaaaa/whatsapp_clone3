
List<CallModel> calldata = [
  CallModel(
    name:"usama",
    
    time:"10:00",
    avatr:"",
  ),
  CallModel(
    name: "ali",
  
    time: "10:00",
    avatr: "",
  ),
  CallModel(
    name: "umer",
    
    time: "10:00",
    avatr: "images/download (1).jpeg",
  ),
];


class CallModel {
 final String ?name;
  final String ?time;
  final String ?avatr;
  CallModel({this.name, this.time, this.avatr});
}
