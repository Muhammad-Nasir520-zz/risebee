import 'package:flutter/material.dart';
import 'package:risebeeapp/core/constants/colors.dart';
import 'package:risebeeapp/ui/custom_widgets/custom_app_bar.dart';
import 'package:risebeeapp/ui/custom_widgets/custom_button.dart';

class FollowUsScreen extends StatelessWidget {
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
              /// Top Screen Area .... Above the [Social Media Platforms]....
              ///
              CustomAppBar(
                info: 'Thank you for Pre-Registration. We will notify you as we launch riseBee. Until then '
                    'you can follow us on social media\nor on our homepage\nwww.risebee.com',
              ),
              /// Social Medial Platforms for follow Us....
              ///
              socialMediaPlatforms(),
              /// [LoginButton] .... Made by sending data to customButton
              ///
              CustomButton(
                title: 'Log in to riseBee!',
                elevation: 0.0,
                onChange: () => Navigator.pushReplacementNamed(context, 'login_button'),
                isColor: false,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget socialMediaPlatforms(){
    return Column(
      children: <Widget>[
        // ======> Instagram area <=========== //
        GestureDetector(
          onTap: (){
            /// Follow us on Instagram
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/instagram.png',width: 40,height: 40,),
              SizedBox(width: 18,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Instagram',style: TextStyle(color: Colors.white,fontSize: 17),),
                  Text('instagram.com/risebeeapp',style: TextStyle(color: Colors.white,fontSize: 17),)
                ],
              )
            ],
          ),
        ),
        // ======> Twitter area <=========== //
        SizedBox(height: 18,),
        GestureDetector(
          onTap: (){
            /// Follow us on Twitter
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/twitter.png',width: 40,height: 40,),
              SizedBox(width: 18,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Twitter',style: TextStyle(color: Colors.white,fontSize: 17),),
                  Text('twitter.com/risebeeapp       ',style: TextStyle(color: Colors.white,fontSize: 17),)
                ],
              )
            ],
          ),
        ),
        // ======> Homepage area <=========== //
        SizedBox(height: 18,),
        GestureDetector(
          onTap: (){
            /// Goto our Home Page
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/homepage.png',width: 40,height: 40,),
              SizedBox(width: 18,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Homepage',style: TextStyle(color: Colors.white,fontSize: 17),),
                  Text('www.risebee.com                 ',style: TextStyle(color: Colors.white,fontSize: 17),)
                ],
              )
            ],
          ),
        )
      ],
    );

  }
}
