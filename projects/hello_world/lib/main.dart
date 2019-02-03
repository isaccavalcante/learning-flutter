import "package:flutter/material.dart";

void main() {
  runApp(
    new Container(
      color: Colors.black,
      child: new Center(
        child: new Directionality(
          textDirection: TextDirection.ltr, 
          child: new Text("Hello, world!", style: TextStyle(color: Colors.green) )
        )
      )
    )
  );
}