import 'package:flutter/material.dart';
import 'package:risebeeapp/core/constants/colors.dart';
import 'package:risebeeapp/ui/custom_widgets/custom_bottom_navigation_bar.dart';


class ContactScreen extends StatelessWidget {
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
              /// Custom app bar ....
              ///
              GestureDetector(
                onTap: ()=>Navigator.pop(context),
                child: Container(
                  height: 70,
                  child: Icon(Icons.arrow_back,color: Colors.white,),
                ),
              ),
              /// Different Social Media Platforms ....
              ///
              Center(
                child: Column(
                  children: [
                    Text('riseBee',style: TextStyle(color: whiteColor,fontSize: 26),),
                    Text('Help',style: TextStyle(color: whiteColor,fontSize: 26)),
                    SizedBox(height: 30,),
                    RiseBeeHelp(plateform:'E-mail',plateformLink: 'support@risebee.com',icon: Icons.mail_outline,),
                    SizedBox(height: 20,),
                    RiseBeeHelp(plateform:'Facebook',plateformLink: 'facebook.com/risebeeapp',icon: Icons.face,),
                    SizedBox(height: 20,),
                    RiseBeeHelp(plateform:'Twitter',plateformLink: 'twitter.com/risebeeapp',icon: Icons.mail_outline,),
                    SizedBox(height: 20,),
                    RiseBeeHelp(plateform:'Instagram',plateformLink: 'instagram.com/risebeeapp',icon: Icons.mail_outline,),
                    SizedBox(height: 20,),
                    RiseBeeHelp(plateform:'LinkedIn',plateformLink: 'linkedin.com/risebeeapp',icon: Icons.mail_outline,),
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

class RiseBeeHelp extends StatelessWidget {
  String plateform,plateformLink;
  IconData icon;
  RiseBeeHelp({this.icon,this.plateform,this.plateformLink});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        child: Row(
          children: [
            Icon(icon,size: 40,color: Colors.white,),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(plateform,style: TextStyle(color: Colors.white,fontSize: 20),),
                Text(plateformLink,style: TextStyle(color: Colors.white,fontSize: 16),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
