import 'package:flutter/material.dart';
import 'package:risebeeapp/core/constants/colors.dart';
import 'package:risebeeapp/core/constants/text_styles.dart';
import 'package:risebeeapp/ui/custom_widgets/custom_bottom_navigation_bar.dart';
import 'package:risebeeapp/ui/custom_widgets/custom_button.dart';
import 'package:risebeeapp/ui/custom_widgets/custom_no_transactions.dart';


class MyInvestScreen extends StatefulWidget {
  @override
  _MyInvestScreenState createState() => _MyInvestScreenState();
}

class _MyInvestScreenState extends State<MyInvestScreen> {
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
            child: Text('MyInvest',style: appBarTitleStyle,),
          ),
          Expanded(
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    /// top area .. image and money
                    ///
                    Text('My Assets',style: TextStyle(fontSize: 20),),
                    Text('0,00 €',style: TextStyle(fontSize: 35),),
                    GestureDetector(
                        onTap: () => Navigator.pushNamed(context, 'rise_bee_fund'),
                        child: Image.asset('assets/images/my_invest_screen/rise_bee_fund.png')),
                  ],
                ),
                /// bottom image with no Transactions etc
                ///
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Depot',style: TextStyle(fontSize: 20),),
                      customNoTransactions(context),
                      SizedBox(height: 15,),
                      Text('Green Investment',style: TextStyle(fontSize: 20),),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('assets/images/my_invest_screen/green_invesment.png')),
                    ],
                  ),
                )
              ],
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
