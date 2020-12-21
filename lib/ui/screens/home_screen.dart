import 'package:flutter/material.dart';
import 'package:risebeeapp/core/constants/colors.dart';
import 'package:risebeeapp/core/constants/decoration.dart';
import 'package:risebeeapp/ui/custom_widgets/circular_elevated_buttons.dart';
import 'package:risebeeapp/ui/custom_widgets/custom_no_transactions.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          /// UnScrollable Half Body ..... Containing appBar, elevated buttons and Cards
          ///
          unScrollableHalfBody(),
          /// Scrollable Half Body .... Containing [gridView] of images
          ///
          scrollableHalfBody(),
        ],
      ),
    );
  }

  Widget unScrollableHalfBody(){
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 12.0, top: 40,right: 12,bottom: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Material(
                  elevation: 3.0,
                  borderRadius: BorderRadius.circular(50),
                  child: CircleAvatar(
                    maxRadius: 25,
                    backgroundColor: Colors.white,
                    child: IconButton(
                      icon: Icon(Icons.person,size: 28,color: Colors.black,),
                      onPressed: () => Navigator.pushNamed(context, 'settings_screen'),
                    ),
                  )
              ),
              IconButton(
                icon: Icon(Icons.power_settings_new,size: 32,color: Colors.black,),
                onPressed: () => Navigator.pushReplacementNamed(context, 'login_button'),
              ),
            ],
          ),
        ),
        Text('Balance',style: TextStyle(fontSize: 20),),
        SizedBox(height: 0,),
        Text('0.00 €',style: TextStyle(fontSize: 35),),
        SizedBox(height: 5,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              /// Elevated Button In one row ... i.e => [Add,Send,Settings]
              ///
              circularElevatedButtons(
                  image: 'assets/images/home_screen_images/add_icon.png',
                  onChanged: () => print('add'),
                  name: 'Add Money'
              ),
              circularElevatedButtons(
                  image: 'assets/images/home_screen_images/send_icon.png',
                  onChanged: () => print('send'),
                  name: 'Send Money'
              ),
              circularElevatedButtons(
                  image: 'assets/images/home_screen_images/settings_icon.png',
                  onChanged: () => print('settings'),
                  name: 'Settings'
              ),
            ],
          ),
        ),
        SizedBox(height: 10,),
        Container(
          height: 150,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              /// Cards are here ... Which are in Horizontal Scroll view
              ///
              horizontalScrollingCards(
                text: '11/2020',
                isImage: false,
                onChanged: () => print('one'),
              ),
              horizontalScrollingCards(
                text: 'riseGold',
                image: 'assets/images/home_screen_images/rise_gold.png',
                onChanged: () => print('two'),
              ),
              horizontalScrollingCards(
                text: 'BeeLoyal',
                image: 'assets/images/home_screen_images/bee_loyal.png',
                onChanged: () => print('three'),
              ),
            ],
          ),
        ),
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
            child: ListView(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              children: <Widget>[
                Text('MyInvest',style: TextStyle(fontSize: 18),),
                Padding(
                  padding: EdgeInsets.symmetric(vertical :8.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 72,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text('riseGold',style: TextStyle(fontSize: 17),),
                                    Row(
                                      children: <Widget>[
                                        Text('00.00',style: TextStyle(fontSize: 17),),
                                        SizedBox(width: 15,),
                                        Text('Gr.   ',style: TextStyle(fontSize: 17),)
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text('riseBee Fund',style: TextStyle(fontSize: 17),),
                                    Row(
                                      children: <Widget>[
                                        Text('00.00',style: TextStyle(fontSize: 17),),
                                        SizedBox(width: 15,),
                                        Text('Euro',style: TextStyle(fontSize: 17),)
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 12,
                          decoration: BoxDecoration(
                            gradient: gradientColor,
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Text('Last Transactions',style: TextStyle(fontSize: 18),),
                SizedBox(height: 5,),
                customNoTransactions(context),
                Text('#riseBee',style: TextStyle(fontSize: 18),),
                Image.asset('assets/images/home_screen_images/grid_image1.png'),
                Row(
                  children: <Widget>[
                    Expanded(child: Image.asset('assets/images/home_screen_images/grid_image2.png')),
                    Expanded(child: Image.asset('assets/images/home_screen_images/gird_image3.png')),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget horizontalScrollingCards({String text, bool isImage = true, String image, Function onChanged}){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: GestureDetector(
        onTap: onChanged,
        child: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width*0.9,
              height: 150,
              decoration: BoxDecoration(
                  gradient: gradientColor,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  isImage ?
                      Image.asset(image,height: 80,width: 80,):
                      Text('riseBee Impact Report',style: TextStyle(color: Colors.white,fontSize: 25),),
                  Text(text,style: TextStyle(color: Colors.white,fontSize: 25),)
                ],
              ),
            ),
            Positioned(
              child: Image.asset('assets/images/home_screen_images/cards_white_area.png'),
              left: 30,
              top: -5,
            ),
          ],
        ),
      ),
    );
  }
}