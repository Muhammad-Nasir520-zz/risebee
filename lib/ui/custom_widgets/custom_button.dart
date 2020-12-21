import 'package:flutter/material.dart';
import 'package:risebeeapp/core/constants/colors.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double elevation;
  final Function onChange;
  final bool isColor;
  CustomButton({this.title, this.elevation, this.onChange, this.isColor = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 20,left: 25,right: 25),
        child: Material(
          borderRadius: BorderRadius.circular(8.0),
          elevation: elevation,
          color: Colors.white,
          child: Container(
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: isColor ? gradientColor : LinearGradient(
                colors: [
                  Colors.white,
                  Colors.white
                ]
              ),
                borderRadius: BorderRadius.circular(8.0)
            ),
            child: FlatButton(
                onPressed: onChange,
                child: Text(title,style: TextStyle(color: isColor ? Colors.white : Color(0xFF35A47F),fontSize: 17),)),
          ),
        )
    );
  }
}
