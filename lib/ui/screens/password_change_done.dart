import 'package:flutter/material.dart';
import 'package:risebeeapp/core/constants/colors.dart';
import 'package:risebeeapp/ui/custom_widgets/custom_bottom_navigation_bar.dart';

class PasswordChangeDone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: gradientColor
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.white,
              child: Icon(Icons.done,size: 60,color: Theme.of(context).primaryColor,),
            ),
            SizedBox(height: 10,),
            Text('Your password change\nwas successfully',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20,color:Colors.white),
            )
          ],
        ),
      ),
      /// Custom Bottom Navigation Bar....
      ///
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
