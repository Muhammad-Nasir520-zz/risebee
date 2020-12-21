import 'package:flutter/material.dart';
import 'package:risebeeapp/core/constants/colors.dart';
import 'package:risebeeapp/core/constants/decoration.dart';
import 'package:risebeeapp/core/constants/text_styles.dart';
import 'package:risebeeapp/ui/custom_widgets/circular_elevated_buttons.dart';
import 'package:risebeeapp/ui/custom_widgets/custom_bottom_navigation_bar.dart';
import 'package:risebeeapp/ui/custom_widgets/custom_no_transactions.dart';

class RiseGoldScreen extends StatefulWidget {
  @override
  _RiseGoldScreenState createState() => _RiseGoldScreenState();
}

class _RiseGoldScreenState extends State<RiseGoldScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          /// UnScrollable Half Body ..... Containing appBar and elevated buttons
          ///
          unScrollableHalfBody(),
          /// Scrollable Half Body .... Containing [goldMiningImage] and [Text]
          ///
          scrollableHalfBody(),
        ],
      ),
      ///
      /// Custom Bottom Navigation Bar
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }

  Widget unScrollableHalfBody(){
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 12.0, top: 40,right: 12,bottom: 6),
          child: Row(
            children: <Widget>[
              Text('riseGold',style: TextStyle(fontSize: 26),),
              Image.asset('assets/images/rise_gold_screen/gold.png')
            ],
          ),
        ),
        SizedBox(height: 10,),
        Text('My Assets',style: TextStyle(fontSize: 20),),
        Text('0.00 €',style: TextStyle(fontSize: 35),),
        SizedBox(height: 20,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              /// Elevated Button In one row ... i.e => [Add,Send,Settings]
              ///
              circularElevatedButtons(
                  image: 'assets/images/rise_gold_screen/arrow_up.png',
                  onChanged: () => print('add'),
                  name: '        Buy\n35.67 Eur/Gr.'
              ),
              circularElevatedButtons(
                  image: 'assets/images/rise_gold_screen/arrow_down.png',
                  onChanged: () => print('settings'),
                  name: '        Sell\n33.56 Eur/Gr.'
              ),
            ],
          ),
        ),
        SizedBox(height: 10,),
      ],
    );
  }

  Widget scrollableHalfBody(){
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(top: 10.0),
        child: Material(
          elevation: 15.0,
          color: Colors.white,
          borderRadius: topRightLeftRadius,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 6,),
                Text('Last Transactions',style: TextStyle(fontSize: 18),),
                SizedBox(height: 6,),
                customNoTransactions(context),
                Expanded(
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    children: <Widget>[
                      Image.asset('assets/images/rise_gold_screen/gold_mining_image.png'),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Ethical & Eco-Friendly Gold',style: TextStyle(fontSize: 25),),
                          Text('riseGold gold is from responsible Mining and is produced using legal operations. Ethical gold '
                              'means good labour conditions, no child labour, gender inequality or unfair pay. Supply chains '
                              'are also transparent. Also it as being mined in such a way to ensure minimal impact on the '
                              'land and environment - for example, no toxic chemicals are used during the process. ',
                          textAlign: TextAlign.center,style: TextStyle(fontSize: 18),)
                        ],
                      )

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
