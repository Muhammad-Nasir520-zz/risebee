import 'package:flutter/material.dart';
import 'package:risebeeapp/core/constants/colors.dart';
import 'package:risebeeapp/core/constants/text_styles.dart';
import 'package:risebeeapp/ui/custom_widgets/custom_bottom_navigation_bar.dart';
import 'package:risebeeapp/ui/custom_widgets/custom_button.dart';

class ImpactScreen extends StatefulWidget {
  @override
  _ImpactScreenState createState() => _ImpactScreenState();
}

class _ImpactScreenState extends State<ImpactScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          children: <Widget>[
            ///
            /// Custom App Bar
            Container(
              padding: EdgeInsets.only(left: 12),
              alignment: Alignment.bottomLeft,
              height: 70,
              child: Text('Impact',style: appBarTitleStyle,),
            ),
            SizedBox(height: 10,),
            /// Un Scrollable Half Body .... Containing percentage impact and full screen button
            ///
            unScrollableHalfBody(),
            /// Scrollable Half Body .. having grids of images
            ///
            scrollableHalfBody(),
          ],
        ),
      ),
      /// Custom Bottom Navigation Bar
      ///
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }

  unScrollableHalfBody(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Your Impact Score',style: TextStyle(fontSize: 20),),
        Text('91%',style: TextStyle(fontSize: 35),),
        CustomButton(
          title: 'Actual Impact Report',
          elevation: 5,
          onChange: () => print('tap'),
          isColor: false,
        ),
        SizedBox(height: 10,),
        Text('Help us to make the world a better Place, Make a donation!',style: TextStyle(fontSize: 18),),
      ],
    );
  }

  Widget scrollableHalfBody(){
    return Expanded(
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              childAspectRatio: 1.12,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                Image.asset('assets/images/rise_gold_screen/grid_image1.png'),
                Image.asset('assets/images/rise_gold_screen/grid_image2.png'),
                Image.asset('assets/images/rise_gold_screen/grid_image3.png'),
                Image.asset('assets/images/rise_gold_screen/grid_image4.png'),
                Image.asset('assets/images/rise_gold_screen/grid_image5.png'),
                Image.asset('assets/images/rise_gold_screen/grid_image6.png'),
                Image.asset('assets/images/rise_gold_screen/grid_image7.png'),
                Image.asset('assets/images/rise_gold_screen/grid_image8.png'),
              ],
            ),
          ),
          Image.asset('assets/images/rise_gold_screen/grid_image9.png',height: 135)
        ],
      ),
    );
  }
}

