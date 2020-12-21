import 'package:flutter/material.dart';
import 'package:risebeeapp/core/constants/colors.dart';
import 'package:risebeeapp/ui/custom_widgets/custom_bottom_navigation_bar.dart';
import 'package:risebeeapp/ui/custom_widgets/display_and_take_profile_image.dart';
import 'package:risebeeapp/ui/custom_widgets/profile_screens_text_fields.dart';
import 'package:risebeeapp/ui/screens/setting_screen.dart';


class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: gradientColor
        ),
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// App Bar ....
                  ///
                  Container(
                    height: 70,
                    child: GestureDetector(
                      onTap:()=> Navigator.pop(context),
                        child: Icon(Icons.arrow_back,color: Colors.white,)
                    ),
                  ),
                  DisplayAndTakeProfileImage(),
                ],
              ),
              /// Text Fields ... For address, email and phone number
              ///
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                   children: [
                     SizedBox(height: 20,),
                     InputTextField(onChange: null,labelText: 'Address',hintText: 'Country Information',textColor: whiteColor,
                     labelColor: whiteColor,hintColor: whiteColor,enableBorderColor: whiteColor,focuseBorderColor: whiteColor,cursorColor: whiteColor,),
                     InputTextField(onChange: null,labelText: 'E-Mail Address',hintText: 'sample@gmail.com',textColor: whiteColor,
                       labelColor: whiteColor,hintColor: whiteColor,enableBorderColor: whiteColor,focuseBorderColor: whiteColor,cursorColor: whiteColor),
                     InputTextField(onChange: null,labelText: 'Phone Number',hintText: '+491568392844',textColor: whiteColor,
                       labelColor: whiteColor,hintColor: whiteColor,enableBorderColor: whiteColor,focuseBorderColor: whiteColor,cursorColor: whiteColor),
                   ],
                ),
              )
            ],
          ),
        ),
      ),
      /// Custom Bottom Navigation Bar....
      ///
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}



