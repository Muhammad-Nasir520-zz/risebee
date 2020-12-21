import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:risebeeapp/ui/screens/card_settings_screen.dart';
import 'package:risebeeapp/ui/screens/home_screen.dart';
import 'package:risebeeapp/ui/screens/marketplace_screen.dart';
import 'package:risebeeapp/ui/screens/password_input_screen.dart';
import 'package:risebeeapp/ui/screens/payments_screen.dart';


/// This screen contain all the screens to be navigated using bottom navigation bar
///
class BaseControllerScreen extends StatefulWidget {
  int currentPage;
  BaseControllerScreen({this.currentPage = 0});

  @override
  _BaseControllerScreenState createState() => _BaseControllerScreenState();
}

class _BaseControllerScreenState extends State<BaseControllerScreen> {

  PageController pageController;
  @override
  void initState() {
    super.initState();
    /// Make it initiate in init state
    pageController = PageController(initialPage: widget.currentPage);
    print(widget.currentPage);
  }
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: <Widget>[
          HomeScreen(),
          CardSettingsScreen(),
          PaymentsScreen(),
          MarketPlaceScreen(),
          PasswordInputScreen(),
        ],
        controller: pageController,
        onPageChanged: (pageIndex){
          setState(() {
            this.widget.currentPage = pageIndex;
          });
        },
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: Material(
        elevation: 15,
        child: Container(
          height: 57,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
          ),
          child: CupertinoTabBar(
            backgroundColor: Colors.white,
              currentIndex: widget.currentPage,
              onTap: (pageIndex){
                pageController.animateToPage(
                    pageIndex,
                    duration: Duration(milliseconds: 400),
                    curve: Curves.easeInOut
                );
              },
              items: [
                BottomNavigationBarItem(icon: Image.asset('assets/images/screens_icons/home_screen.png')),
                BottomNavigationBarItem(icon: Image.asset('assets/images/screens_icons/card_settings_screen.png')),
                BottomNavigationBarItem(icon: Image.asset('assets/images/screens_icons/payment_screen.png')),
                BottomNavigationBarItem(icon: Image.asset('assets/images/screens_icons/marketplace_screen.png')),
              ]),
        ),
      ),
    );
  }
}
