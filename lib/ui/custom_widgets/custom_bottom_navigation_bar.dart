import 'package:flutter/material.dart';
import 'package:risebeeapp/ui/screens/base_controller_screen.dart';

class CustomBottomNavigationBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 16.0,
      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
      child: Container(
        height: 57,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            GestureDetector(
                onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => BaseControllerScreen(currentPage: 0))),
                child: Image.asset('assets/images/screens_icons/home_screen.png')),
            GestureDetector(
                onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => BaseControllerScreen(currentPage: 1))),
                child: Image.asset('assets/images/screens_icons/card_settings_screen.png')),
            GestureDetector(
                onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => BaseControllerScreen(currentPage: 2))),
                child: Image.asset('assets/images/screens_icons/payment_screen.png')),
            GestureDetector(
                onTap: () =>Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => BaseControllerScreen(currentPage: 3))),
                child: Image.asset('assets/images/screens_icons/marketplace_screen.png')),
          ],
        ),
      ),
    );
  }
}
