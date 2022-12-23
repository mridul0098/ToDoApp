import "package:flutter/material.dart";

InputDecoration textfield(label) {
  return InputDecoration(
    contentPadding: EdgeInsets.all(30),
    border: OutlineInputBorder(),
    labelText: label,
    hintText: label,
  );
}

ButtonStyle buttonStyle(){
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.all(100),
   // backgroundColor: Colors.blue,

  );
}

SizedBox sizebox(child){
  return SizedBox(
    height: 50,
    width: double.infinity,
    child: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(8),
      child: child,

    ),

  );
}

