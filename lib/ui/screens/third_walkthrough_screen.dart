import 'package:flutter/material.dart';
import 'package:risebeeapp/core/constants/colors.dart';
import 'package:risebeeapp/ui/custom_widgets/custom_app_bar.dart';


class ThirdWalkThroughScreen extends StatelessWidget {
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
              Navigator.pushReplacementNamed(context, 'pre_register');
            }else{
              // ======> left to right scrolling <======= //
              Navigator.pop(context);
            }
          },
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                /// Top Screen Area .... Above the riseBee debit Card Image ....
                ///
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.0,horizontal: 8),
                  child: CustomAppBar(
                    info: 'With the riseBee checking account,\nthe funds will not be used for investing\nin in coal, weapons and other '
                        'unsustainable industries.\n\nWe do not invest in anything harmful to nature and human!',
                    isColor: false,
                  ),
                ),

                /// riseBee Debit Card Image.....
                ///
                Image.asset('assets/images/third_splash.png',height: MediaQuery.of(context).size.height*0.56,),

                /// Three Circles for Splash Screens Indication
                ///
                Container(
                    alignment: Alignment.bottomCenter,
                    child: screensIndicationCircles(context)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget screensIndicationCircles(context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        FlatButton(
          child: Text('Previous',style: TextStyle(color: Color(0xFF454545)),),
          onPressed: () => Navigator.pop(context),
        ),
        Row(
          children: <Widget>[
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black),
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
                  gradient: gradientColor,
                  border: Border.all(color: Colors.black)
              ),
            ),
          ],
        ),
        FlatButton(
          child: Text('Next',style: TextStyle(color: Color(0xFF454545)),),
          onPressed: () => Navigator.pushReplacementNamed(context, 'pre_register'),
        ),
      ],
    );
  }
}
