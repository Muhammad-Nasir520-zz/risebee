import 'package:flutter/material.dart';
import 'package:risebeeapp/core/constants/colors.dart';

class DisplayAndTakeProfileImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 90,
            width: 90,
            child: Stack(
              children: [
                ///
                /// User profile image
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person,size: 50,color: Colors.black,),
                  ),
                ),
                ///
                ///  Add profile image button
                Align(
                    alignment: Alignment.bottomRight,
                    child: GestureDetector(
                      onTap: () => print('take image'),
                      child: Material(
                        elevation: 5,
                        shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.add,),
                        ),
                      ),
                    )
                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          ///
          /// User name
          Text('User Name',style: TextStyle(fontSize: 25,color: whiteColor),),
        ],
      ),
    );
  }
}