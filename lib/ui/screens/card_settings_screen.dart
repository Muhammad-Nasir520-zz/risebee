import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:risebeeapp/core/constants/decoration.dart';
import 'package:risebeeapp/core/constants/text_styles.dart';

class CardSettingsScreen extends StatefulWidget {
  @override
  _CardSettingsScreenState createState() => _CardSettingsScreenState();
}

class _CardSettingsScreenState extends State<CardSettingsScreen>
    with TickerProviderStateMixin {

  bool isCashWithdrawal = false;
  bool isOnlinePayment = false;
  double _currentSliderValue = 0;

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
              child: Text('Cards',style: appBarTitleStyle,),
            ),
            /// Horizontal Slider ... Having Debit Card Images
            ///
            _cardFrontBackSlider(),
            /// Scrollable Half Screen ... Having Card Settings and more
            ///
            _scrollableHalfScreen(),
          ],
        )
    );
  }
  _cardFrontBackSlider() {
    TabController imagesController = TabController(length: 2, vsync: this);
    return Container(
      height: MediaQuery.of(context).size.height*0.33,
      child: DefaultTabController(
        length: 2,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 12.0),
              child: TabBarView(
                controller: imagesController,
                children: <Widget>[
                  Image.asset('assets/images/card_settings_screen/card_front.png'),
                  Image.asset('assets/images/card_settings_screen/card_back.png'),
                ],
              ),
            ),
            Container(
              alignment: FractionalOffset(0.5, 0.95),
              child: TabPageSelector(
                controller: imagesController,
                selectedColor: Theme.of(context).primaryColor,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  _scrollableHalfScreen(){
    return Expanded(
      child: Material(
        elevation: 15,
        shadowColor: Colors.grey,
        borderRadius: topRightLeftRadius,
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GestureDetector(
                    onTap: (){},
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.lock),
                        Text('Card Block', style: TextStyle(fontSize: 13),)
                      ],
                    ),
                  ),
                  Container(width: 1, height: 35, color: Colors.grey,),
                  GestureDetector(
                    onTap: (){},
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.remove_red_eye),
                        Text('Card Details', style: TextStyle(fontSize: 13))
                      ],
                    ),
                  ),
                  Container(width: 1, height: 35, color: Colors.grey,),
                  GestureDetector(
                    onTap: (){},
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.more_horiz),
                        Text('Change PIN', style: TextStyle(fontSize: 13))
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  children: <Widget>[
                    SizedBox(height: 15,),
                    Text('Card Settings',style: TextStyle(fontSize: 20),),
                    /// Row containing Cash Withdrawals .... With trailing switch
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 12,),
                            Text('Cash Withdrawals',style: TextStyle(fontSize: 17),),
                            Text('Enables cash withdrawals on ATMs',style: TextStyle(fontSize: 14,color: Color(0xFF707070)),)
                          ],
                        ),
                        CupertinoSwitch(
                            activeColor: Theme.of(context).primaryColor,
                            value: isCashWithdrawal,
                            onChanged: (value){
                              setState(() {
                                isCashWithdrawal = value;
                              });
                            }
                        )
                      ],
                    ),
                    /// Row containing payment .... With trailing switch
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 12,),
                            Text('Online Payment',style: TextStyle(fontSize: 17),),
                            Text('Enables online payments',style: TextStyle(fontSize: 14,color: Color(0xFF707070)),)
                          ],
                        ),
                        CupertinoSwitch(
                            activeColor: Theme.of(context).primaryColor,
                            value: isOnlinePayment,
                            onChanged: (value){
                              setState(() {
                                isOnlinePayment = value;
                              });
                            }
                        )
                      ],
                    ),
                    SizedBox(height: 12,),
                    Text('Card Limit',style: TextStyle(fontSize: 17),),
                    Text('Adjust you daily card limit',style: TextStyle(fontSize: 14,color: Color(0xFF707070)),),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          trackHeight: 7.0,
                          thumbColor: Colors.grey[200],
                          activeTrackColor: Theme.of(context).accentColor
                      ),
                      // =======> Slider here <======= //
                      child: Slider(
                        inactiveColor: Theme.of(context).primaryColor,
                        value: _currentSliderValue,
                        min: 0,
                        max: 100,
                        onChanged: (double value) {
                          setState(() {
                            _currentSliderValue = value;
                          });
                        },
                      ),
                    ),
                    /// Fraud Alerts ... trailing ... forward arrow button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 12,),
                            Text('Fraud Alerts',style: TextStyle(fontSize: 17),),
                            Text('Approve or decline suspicious transactions',style: TextStyle(fontSize: 14,color: Color(0xFF707070)),)
                          ],
                        ),
                        IconButton(
                          icon: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Image.asset('assets/images/card_settings_screen/list_image1.png'),
                    SizedBox(height: 10,),
                    Text('The riseBee debit card is Eco-friendly,recyclable debit Card, made from alternative'
                        'materials and renewable sources. It will also be delivered in an eco-friendly packaging.',
                      textAlign: TextAlign.center,style: TextStyle(fontSize: 17),),
                    SizedBox(height: 10,),
                    Image.asset('assets/images/card_settings_screen/list_image2.png')
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}