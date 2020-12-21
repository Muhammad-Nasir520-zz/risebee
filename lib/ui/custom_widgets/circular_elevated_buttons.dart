import 'package:flutter/material.dart';


Widget circularElevatedButtons({String image, Function onChanged, String name}){
  return Column(
    children: <Widget>[
      GestureDetector(
        onTap: onChanged,
        child: Material(
            elevation: 3.0,
            borderRadius: BorderRadius.circular(50),
            child: CircleAvatar(
                maxRadius: 27,
                backgroundColor: Colors.white,
                child: Image.asset(image)
            )
        ),
      ),
      SizedBox(height: 5,),
      Text(name,style: TextStyle(fontSize: 15),)
    ],
  );
}