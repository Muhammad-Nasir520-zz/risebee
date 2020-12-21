import 'package:flutter/material.dart';
import 'package:risebeeapp/core/constants/text_styles.dart';
import 'package:risebeeapp/core/models/marketplace_model.dart';

class MarketPlaceScreen extends StatefulWidget {
  @override
  _MarketPlaceScreenState createState() => _MarketPlaceScreenState();
}

class _MarketPlaceScreenState extends State<MarketPlaceScreen> {
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
            child: Text('BeeLoyal',style: appBarTitleStyle,),
          ),
          SizedBox(height: 10,),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: marketplace.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                itemBuilder: (context, index){
                // =========> Navigation to the screen using indexes <========= //
                 return GestureDetector(
                   onTap: (){
                     if(index == 0){
                       Navigator.pushReplacementNamed(context, 'rise_gold');
                     }else if(index == 1){
                       Navigator.pushReplacementNamed(context, 'bags_screen');
                     }else if(index == 2){
                       Navigator.pushReplacementNamed(context, 'campaign_screen');
                     }else if(index == 3){
                       Navigator.pushReplacementNamed(context, 'my_invest');
                     }else if(index == 4){
                       Navigator.pushReplacementNamed(context, 'impact_screen');
                     }else if(index == 5){
                       Navigator.pushReplacementNamed(context, 'donation_screen');
                     }
                   },
                   /// Elevated Different Images ... With their names below
                   ///
                   child: Padding(
                     padding: EdgeInsets.symmetric(horizontal: 8.0),
                     child: Column(
                       children: <Widget>[
                         Expanded(
                           child: Material(
                             elevation: 5,
                             borderRadius: BorderRadius.circular(10),
                             child: Container(
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10),
                               ),
                               child: Center(child: Image.asset(marketplace[index].image),),
                             ),
                           ),
                         ),
                         SizedBox(height: 5,),
                         Text(marketplace[index].name),
                       ],
                     ),
                   ),
                 );
                }
            ),
          ),
        ],
      )
    );
  }
}

