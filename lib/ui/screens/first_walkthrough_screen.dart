import 'package:flutter/material.dart';
import 'package:risebeeapp/core/constants/colors.dart';
import 'package:risebeeapp/core/constants/text_styles.dart';


class FirstWalkThroughScreen extends StatefulWidget {
  @override
  _FirstWalkThroughScreenState createState() => _FirstWalkThroughScreenState();
}

class _FirstWalkThroughScreenState extends State<FirstWalkThroughScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: GestureDetector(
          /// Screens Navigation using Horizontal Scrolling......
          ///
          onHorizontalDragUpdate: (value) {
            // ======> Right to left scrolling <======= //
            if(value.primaryDelta < 0){
              Navigator.pushNamed(context, 'walk_through_2');
            }
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              /// Top Area ... containing [Welcome Text] .... Above the Image.....
              ///
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 35),
                child: Column(
                  children: <Widget>[
                    Text('Welcome to',style: TextStyle(fontSize: 20),),
                    Text('riseBee', style: gradientTitleStyle),
                    Text('Are you ready to dive\nin a whole new Banking Experience?',textAlign: TextAlign.center,style: TextStyle(fontSize: 20),)
                  ],
                ),
              ),
              /// riseBee Mobile Screens Image.....
              ///
              Image.asset('assets/images/first_splash.png',height: MediaQuery.of(context).size.height*0.65,),

              /// Three Circles for Splash Screens Indication
              ///
              Container(
                  alignment: Alignment.bottomCenter,
                  child: screensIndicationCircles(context)),
            ],
          ),
        ),
      ),
    );
  }

  Widget screensIndicationCircles(context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        FlatButton(),
        Row(
          children: <Widget>[
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black),
                gradient: gradientColor,
              ),
            ),
            SizedBox(width: 5.0,),
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black)
              ),
            ),
            SizedBox(width: 5.0,),
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black)
              ),
            ),
          ],
        ),
        FlatButton(
          child: Text('Next',style: TextStyle(color: Color(0xFF454545)),),
          onPressed: () => Navigator.pushNamed(context, 'walk_through_2'),
        ),
      ],
    );
  }
}
