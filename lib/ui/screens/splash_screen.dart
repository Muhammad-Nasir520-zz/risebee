import 'dart:async';
import 'package:flutter/material.dart';
import 'package:risebeeapp/core/constants/colors.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    ///time for splash screen
    Timer(Duration(seconds: 3),
        /// Navigate to FirstWalkThroughScreen
        () => Navigator.pushReplacementNamed(context, 'walk_through_1')
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: gradientColor,
        ),
        child: Center(child: Text('riseBee',
          style: TextStyle(fontSize: 45,color: Colors.white,letterSpacing: 6.0),),),
      ),
    );
  }
}
