import 'package:flutter/material.dart';


void main(){
  runApp(new MaterialApp(
    home: new MyTextInput()
  ));
}

class MyTextInput extends StatefulWidget{
  
  @override
  MyTextInputState createState() => new MyTextInputState();


}

class MyTextInputState extends State<MyTextInput>{
  
  final TextEditingController controller = new TextEditingController();

  String result = "";

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text("My Text Input Widget"), backgroundColor: Colors.deepPurpleAccent,),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new TextField(
                decoration: new InputDecoration(hintText: "Type in here"),
                onSubmitted: (String str){
                  setState(() {
                    result = result + "\n" + str;
                  });
                controller.text = "";
                },
                controller: controller,
              ),
              new Text(result)
            ]
          )
        ),
      )
    );
  }

}