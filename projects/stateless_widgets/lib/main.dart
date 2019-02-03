import 'package:flutter/material.dart';

void main() {
  runApp( new MaterialApp (
    home: new MyStatelessWidget()
  ));
}

class MyStatelessWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
    appBar: new AppBar(title: new Text("Stateless Widgets")), 
    body: new Container(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new MyCard(
            icon: new Icon(Icons.phone_android, size: 50.0, color: Colors.greenAccent),
            title: new Text("Flutter is awesome", style: new TextStyle(fontSize: 20.0))),
          new MyCard(
            icon: new Icon(Icons.pets, size: 50.0, color: Colors.redAccent),
            title: new Text("I love pets", style: new TextStyle(fontSize: 20.0))),
          new MyCard(
            icon: new Icon(Icons.build, size: 50.0, color: Colors.blueAccent),
            title: new Text("Let's build a Pet App!", style: new TextStyle(fontSize: 20.0))),
          new MyCard(
            icon: new Icon(Icons.beach_access,size: 50.0, color: Colors.orangeAccent,),
            title: new Text("Then go to a beach vacation", style: new TextStyle(fontSize: 20.0))),
        ]
      ),

    )
    );
  }
}

class MyCard extends StatelessWidget{
  final Widget icon;
  final Widget title;
  
  MyCard({this.icon, this.title});

  @override
  Widget build(BuildContext context){
    return new Container(
      padding: EdgeInsets.all(10.0),
      child: new Card  (
          child: new Column(
          children: <Widget>[
            this.icon,
            this.title
          ],
        )
      ),
    );
  }
}