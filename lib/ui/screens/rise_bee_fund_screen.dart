import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:risebeeapp/core/constants/colors.dart';
import 'package:risebeeapp/core/constants/text_styles.dart';
import 'package:risebeeapp/ui/custom_widgets/custom_bottom_navigation_bar.dart';

class RiseBeeFundScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: whiteColor,
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColor,size: 30,),
        onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('The  ',style: TextStyle(fontSize: 19),),
                Text('riseBee',style: gradientTitleStyle),
                Text('  Fund',style: TextStyle(fontSize: 19),)
              ],
            ),
            Container(height: 3,color: Color(0xFFB2B2B2)),
            SizedBox(height: 5,),
            Text('Sustainable Investing Should Be\nOpen To Everyone',
              style: TextStyle(fontSize: 18),textAlign: TextAlign.center,),
            Image.asset('assets/images/risebee_fund_screen_image.png'),
            SizedBox(height: 15,),
            Text('The riseBee Fund will use rigorous analysis of companies sustainable environmental, '
                'workplace and governance practices to find investments we believe are Poised for growth. '
                'Our goal is to help you build Value and honor your values - all at the same time.',
            textAlign: TextAlign.center,style: TextStyle(fontSize: 18),)
          ],
        ),
      ),
      ///
      /// Custom Bottom Navigation Bar
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
