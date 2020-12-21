import 'package:flutter/material.dart';
import 'package:risebeeapp/core/constants/colors.dart';
import 'package:risebeeapp/core/constants/text_styles.dart';
import 'package:risebeeapp/ui/custom_widgets/custom_bottom_navigation_bar.dart';

class DonationsScreen extends StatefulWidget {
  @override
  _DonationsScreenState createState() => _DonationsScreenState();
}

class _DonationsScreenState extends State<DonationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          ///
          /// Custom App Bar
          Container(
            padding: EdgeInsets.only(left: 12),
            alignment: Alignment.bottomLeft,
            height: 70,
            child: Text('Donations',style: appBarTitleStyle,),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: ListView(
                children: <Widget>[
                  // =========> top text and donation image <========== //
                  Text('The following associations are risebee partners, to whom you can make a donation in real time ',
                    textAlign: TextAlign.center,style: TextStyle(fontSize: 21),),
                  SizedBox(height: 10,),
                  Image.asset('assets/images/donation_screen_image.png'),
                  SizedBox(height: 20,),
                  // ============> No associations yet <============ //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(),
                      Container(
                        width: MediaQuery.of(context).size.width/1.7,
                        height: 36,
                        child: Center(child: Text('No associations yet',style: TextStyle(fontSize: 20),)),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: borderColor),
                        ),
                      ),
                      Container(),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      /// Custom Bottom Navigation Bar
      ///
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
