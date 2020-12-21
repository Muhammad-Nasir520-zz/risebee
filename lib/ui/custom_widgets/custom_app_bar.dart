import 'package:flutter/material.dart';
import 'package:risebeeapp/core/constants/text_styles.dart';

class CustomAppBar extends StatelessWidget {
  final String info;
  final bool isColor;
  CustomAppBar({this.info, this.isColor = true});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Container(
        child: Column(
          children: <Widget>[
            Text('riseBee',
              style: isColor ? TextStyle(color: Colors.white, fontSize: 40) :
                  /// Constant for giving gradient color to the text ....
              gradientTitleStyle
            ),
            SizedBox(height: 10,),
            Text(info,
              style: TextStyle(color: isColor ? Colors.white : Colors.black, fontSize: 17),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
