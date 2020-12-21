import 'package:flutter/material.dart';
import 'package:risebeeapp/core/constants/colors.dart';
import 'package:risebeeapp/core/constants/text_styles.dart';
import 'package:risebeeapp/ui/custom_widgets/custom_bottom_navigation_bar.dart';

class CampaignsScreen extends StatefulWidget {
  @override
  _CampaignsScreenState createState() => _CampaignsScreenState();
}

class _CampaignsScreenState extends State<CampaignsScreen> {
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
            child: Text('Campaign',style: appBarTitleStyle,),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: ListView(
                children: <Widget>[
                  // ============> Top text <============ //
                  Text('The following are risebee, where you can get discounts and cash backs when you make a '
                      'Payment with your riseBee card',textAlign: TextAlign.center,style: TextStyle(fontSize: 18),),
                  SizedBox(height: 20,),
                  /// elevated image
                  ///
                  Material(
                    color: whiteColor,
                    elevation: 5,
                    borderRadius: BorderRadius.circular(10),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('assets/images/campaign_screen_image.png', height: 240,)),
                  ),

                  SizedBox(height: 20,),
                  // ============> No campaigns yet <============ //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(),
                      Container(
                        width: MediaQuery.of(context).size.width/1.8,
                        height: 36,
                        child: Center(child: Text('No Campaigns yet',style: TextStyle(fontSize: 20),)),
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
