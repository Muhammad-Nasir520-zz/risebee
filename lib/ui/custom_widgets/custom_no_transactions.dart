import 'package:flutter/material.dart';
import 'package:risebeeapp/core/constants/colors.dart';

Widget customNoTransactions(context){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Container(),
      Container(
        width: MediaQuery.of(context).size.width/2,
        height: 23,
        child: Center(child: Text('NO TRANSACTIONS')),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: borderColor),
        ),
      ),
      Container(),
    ],
  );
}