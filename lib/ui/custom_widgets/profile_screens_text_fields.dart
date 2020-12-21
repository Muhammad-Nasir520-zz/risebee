import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  String labelText,hintText;
  Color textColor,enableBorderColor,focuseBorderColor,hintColor,labelColor,cursorColor;
  Function onChange;
  InputTextField({this.onChange,this.labelText,this.hintText,this.textColor,this.labelColor,this.hintColor,this.enableBorderColor,this.focuseBorderColor,this.cursorColor});
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChange,
      cursorColor:cursorColor,
      decoration: InputDecoration(
        fillColor: textColor,
        labelText: labelText,
        labelStyle: TextStyle(color: labelColor),
        hintStyle: TextStyle(color:hintColor),
        hintText: hintText,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: enableBorderColor,),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: focuseBorderColor,),
        ),
      ),
    );
  }
}