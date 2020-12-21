import 'package:flutter/material.dart';
import 'package:risebeeapp/core/constants/colors.dart';
import 'package:risebeeapp/ui/custom_widgets/custom_bottom_navigation_bar.dart';
import 'package:risebeeapp/ui/custom_widgets/custom_button.dart';
import 'package:risebeeapp/ui/custom_widgets/profile_screens_text_fields.dart';


class PasswordChange extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// App Bar Area ... back arrow and dots
            ///
            Container(
              height: 70,
              child: GestureDetector(
                  onTap: ()=>Navigator.pop(context),
                  child: Icon(Icons.arrow_back)),
            ),
            Center(
              child: Column(
                children: [
                  Text('Change Password',style: TextStyle(fontSize: 22),),
                  Icon(Icons.more_horiz,size: 50,),
                ],
              ),
            ),
            /// Text Fields .... For Changing password ....
            Expanded(
              child: ListView(
                children: [
                  InputTextField(onChange: null,labelText: 'Old Password',hintText: '(password)',textColor: blackColor,
                    labelColor: blackColor,hintColor: blackColor,enableBorderColor: blackColor,focuseBorderColor: blackColor,cursorColor: blackColor),
                  InputTextField(onChange: null,labelText: 'New Password',hintText: '(password)',textColor: blackColor,
                    labelColor: blackColor,hintColor: blackColor,enableBorderColor: blackColor,focuseBorderColor: blackColor,cursorColor: blackColor),
                  InputTextField(onChange: null,labelText: 'Confirm Password',hintText: '(again)',textColor: blackColor,
                    labelColor: blackColor,hintColor: blackColor,enableBorderColor: blackColor,focuseBorderColor: blackColor,cursorColor: blackColor),
                  SizedBox(height: 20,),
                  Text('INFO\nYour password must consist of 6 digits')
                ],
              ),
            ),
            /// Log out Button ......
            ///
            CustomButton(
              title: 'Confirm',
              elevation: 3.0,
              onChange: () => Navigator.pushReplacementNamed(context, 'password_change_done'),
              isColor: true,
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
