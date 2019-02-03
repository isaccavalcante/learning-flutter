import "package:flutter/material.dart";

void main(){
  runApp(
    new MaterialApp(
      home: new MyAwesomeButton(),
    )
  );
}

class MyAwesomeButton extends StatefulWidget{
  
  @override
  MyAwesomeButtonState createState() => new MyAwesomeButtonState();
}


class MyAwesomeButtonState extends State<MyAwesomeButton>{
  
  int index = 0;
  List<String> messages = ["Flutter", "is", "awesome"]; 
  String display_message = "";

  void onPressed(){
    setState(() {
      display_message = messages[index];
      if (index < 2) {
        index = index + 1;
      } else {
        index = 0;
      }   
    });
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: AppBar(title: new Text("Stateful Widget"), backgroundColor: Colors.cyan,),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(display_message, style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),),
              new Padding(padding: new EdgeInsets.all(10.0),),
              new RaisedButton(
                child: new Text("PRESS ME", style: new TextStyle(color: Colors.white, fontStyle: FontStyle.italic)),
                color: Colors.cyan,
                onPressed: onPressed
              )
            ],
          ),
        ),
        )
      );
  }

}
