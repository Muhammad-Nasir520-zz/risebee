import 'package:flutter/material.dart';
import 'package:risebeeapp/core/constants/colors.dart';
import 'package:risebeeapp/core/constants/text_styles.dart';
import 'package:risebeeapp/ui/custom_widgets/custom_no_transactions.dart';

class PaymentsScreen extends StatefulWidget {
  @override
  _PaymentsScreenState createState() => _PaymentsScreenState();
}

class _PaymentsScreenState extends State<PaymentsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      ///
      /// Numbers of tabs
      length: 3,
      /// Stack is used for bottom line in app bar
        ///
      child: Stack(
        children: <Widget>[
          Scaffold(
            /// App Bar ....
            ///
            appBar: AppBar(
              elevation: 0.0,
              backgroundColor: Colors.white,
              title: Text('Transactions', style: appBarTitleStyle,),
              ///
              /// Tab bar Names ... with customization ...
              bottom: TabBar(
                indicatorPadding: EdgeInsets.only(right: 17),
                indicatorWeight: 6,
                unselectedLabelColor: Colors.black,
                labelColor: Colors.black,
                indicatorColor: Theme.of(context).primaryColor,
                tabs: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text('Transfer',style: TextStyle(fontSize: 18),),
                        ],
                      ),
                      Container(width: 1, height: 35, color: Colors.grey,),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Orders',style: TextStyle(fontSize: 18)),
                      Container(width: 1, height: 35, color: Colors.grey,),
                    ],
                  ),
                  Text('History',style: TextStyle(fontSize: 18)),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                ///
                /// Screens
                TransfersScreen(),
                OrdersScreen(),
                HistoryScreen(),
              ],
            ),
          ),
          // ==========>> This is the bottom line of app bar <<=========== //
          Container(
           height: MediaQuery.of(context).size.height*0.189,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 2,
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}

class TransfersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Text('Saved Transactions',style: TextStyle(fontSize: 21),),
            ),
            SizedBox(height: 20,),
            /// All the list tiles used in the screen are there
            ///
            ListTile(
              leading: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(50),
                child: CircleAvatar(
                  maxRadius: 26,
                  backgroundColor: Color(0xFFEAEAEA),
                  child: Icon(Icons.add,size: 34,color: Colors.black,),
                ),
              ),
              title: Text('Add Recipient',style: TextStyle(fontSize: 18),),
            ),
            SizedBox(height: 5,),
            ListTile(
              leading: Image.asset('assets/images/payments_screen/international_transfer.png',width: 55,height: 55,),
              title: Text('International Transfer',style: TextStyle(fontSize: 17),),
              subtitle: Text('Transfer Money to any country',style: TextStyle(fontSize: 15),),
              onTap: (){},
            ),
            SizedBox(height: 5,),
            ListTile(
              leading: Image.asset('assets/images/payments_screen/sepa_transfer.png',width: 55,height: 55,),
              title: Text('Sepa Transfer',style: TextStyle(fontSize: 17),),
              subtitle: Text('European Money Transfer',style: TextStyle(fontSize: 15),),
              onTap: (){},
            ),
            SizedBox(height: 5,),
            ListTile(
              leading: Image.asset('assets/images/payments_screen/donation.png',width: 55,height: 55,),
              title: Text('Donation',style: TextStyle(fontSize: 17),),
              subtitle: Text('Make a Donation',style: TextStyle(fontSize: 15),),
              onTap: (){},
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.0,top: 20,bottom: 5),
              child: Text('Last Transactions',style: TextStyle(fontSize: 21),),
            ),
            customNoTransactions(context),
          ],
        ),
      ),
      /// Custom Floating action button
      floatingActionButton: Material(
        elevation: 3,
          borderRadius: BorderRadius.circular(10),
          child: Container(
          height: 85,
          width: 85,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Center(child: Image.asset('assets/images/payments_screen/tree.png'),)
        ),
      ),
    );
  }
}

class OrdersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('order'),);
  }
}

class HistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('history'),);
  }
}

