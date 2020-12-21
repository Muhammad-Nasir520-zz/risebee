import 'package:flutter/material.dart';
import 'package:risebeeapp/core/constants/colors.dart';
import 'package:risebeeapp/core/constants/text_styles.dart';
import 'package:risebeeapp/ui/custom_widgets/custom_bottom_navigation_bar.dart';

class BagsScreen extends StatefulWidget {
  @override
  _BagsScreenState createState() => _BagsScreenState();
}

class _BagsScreenState extends State<BagsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            ///
            /// Custom App Bar
            Container(
              padding: EdgeInsets.only(left: 12),
              alignment: Alignment.bottomLeft,
              height: 60,
              child: Text('Bags',style: appBarTitleStyle,),
            ),

            Expanded(
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: <Widget>[
                  /// euro ... image and below text area ....
                  ///
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Bags Total',style: TextStyle(fontSize: 20),),
                      Text('0,00 €',style: TextStyle(fontSize: 35),),
                      Image.asset('assets/images/bags_screen_image.png'),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text('Saving money is fun with Bags. Saving for a new car? A trip around the world? With Bags, '
                            'you can set one or more saving goals, and we will nudge you to reach them with cool and '
                            'interactive visuals and notifications.',textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18),),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  /// Add new Bag Button
                  ///
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.asset('assets/images/add_new_bag.png'),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text('Add new Bag',style: TextStyle(fontSize: 18),),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      ///
      /// Custom Bottom Navigation Bar
      ///
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
