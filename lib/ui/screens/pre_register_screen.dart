import 'package:flutter/material.dart';
import 'package:risebeeapp/core/constants/colors.dart';
import 'package:risebeeapp/core/constants/decoration.dart';
import 'package:risebeeapp/ui/custom_widgets/custom_app_bar.dart';
import 'package:risebeeapp/ui/custom_widgets/custom_button.dart';

class PreRegisterScreen extends StatefulWidget {
  @override
  _PreRegisterScreenState createState() => _PreRegisterScreenState();
}

class _PreRegisterScreenState extends State<PreRegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: gradientColor,
        ),
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              /// Top Screen Area .... Above the [textFieldCard]....
              ///
              CustomAppBar(
                info: 'Register now if you want to make an impact! We will let you know when the adventure begins.',
              ),
              /// Text Fields Card + Pre-register Button ....
              ///
              textFieldsCard(),
            ],
          ),
        ),
      ),
    );
  }

  Widget textFieldsCard(){
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
        ),
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10,left: 25,right: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('What is your name?',style: TextStyle(fontSize: 17),),
                  Container(
                    height: 38.0,
                    child: TextField(
                      decoration: preRegisterTextFieldDeco,
                    ),
                  ),
                ],
              ),
            ),
            Divider(color: Color(0xFF707070),height: 10.0,),
            //  ======> Name Field <====== //
            Padding(
              padding: EdgeInsets.only(top: 10,left: 25,right: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('What is your name?',style: TextStyle(fontSize: 17),),
                  Container(
                    height: 38.0,
                    child: TextField(
                      decoration: preRegisterTextFieldDeco,
                    ),
                  ),
                ],
              ),
            ),
            Divider(color: Color(0xFF707070),height: 10.0,),
            //  ======> Email Field <====== //
            Padding(
              padding: EdgeInsets.only(top: 10,left: 25,right: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Could you type your e-mail address?',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                  Container(
                    height: 38.0,
                    child: TextField(
                      decoration: preRegisterTextFieldDeco.copyWith(hintText: 'Your E-Mail Address')
                    ),
                  ),
                ],
              ),
            ),
            Divider(color: Color(0xFF707070),height: 10.0,),
            //  ======> Password Field <====== //
            Padding(
              padding: EdgeInsets.only(top: 10,left: 25,right: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Password',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                  Container(
                    height: 38.0,
                    child: TextField(
                        decoration: preRegisterTextFieldDeco.copyWith(hintText: 'Password (6 digits)')
                    ),
                  ),
                  Divider(color: Color(0xFFACACAC),),
                  Container(
                    height: 38.0,
                    child: TextField(
                        decoration: preRegisterTextFieldDeco.copyWith(hintText: 'Password again (6 digits)')
                    ),
                  ),
                ],
              ),
            ),
            Divider(color: Color(0xFF707070),height: 10.0,),
            //  ======> Phone Number Field <====== //
            Padding(
              padding: EdgeInsets.only(top: 10,left: 25,right: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Could you type your phone number?',style: TextStyle(fontSize: 17),),
                  Container(
                    height: 38.0,
                    child: TextField(
                      decoration: preRegisterTextFieldDeco.copyWith(hintText: 'Your phone number (optional)'),
                    ),
                  ),
                ],
              ),
            ),
            Divider(color: Color(0xFF707070),height: 10.0,),
            //  ======> Pre - Register Button <====== //
            CustomButton(
              title: 'Pre-Register Now!',
              elevation: 3.0,
              onChange: () => Navigator.pushReplacementNamed(context, 'follow_us_screen'),
              isColor: false,
            ),
          ],
        ),
      ),
    );
  }
}
