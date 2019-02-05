import 'package:flutter/material.dart';


void main(){
  runApp(
    new MaterialApp(
      home: new SecondPage(),
      routes: <String, WidgetBuilder> {
      "/HomePage":(BuildContext context) => new HomePage(),
      "/SecondPage":(BuildContext context) => new SecondPage()
      }
    )
  );
}

class HomePage extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text("My Home Page"),backgroundColor: Colors.deepOrangeAccent,),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(icon: new Icon(Icons.home, color: Colors.deepOrange,),
                onPressed: (){Navigator.of(context).pushNamed("/SecondPage");},
                iconSize: 70.0 ,),
              new Text("Home")
            ]
          )  
        )
      )
    );
  }
}


class SecondPage extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text("My Second Page")),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(
                icon: new Icon(Icons.arrow_back, color: Colors.lightBlueAccent),
                  onPressed: (){Navigator.of(context).pushNamed("/HomePage");},
                  iconSize: 70.0
                ),
              new Text("Cool!"),
            ]
          ),
        ),  
      )
    );
  }


}