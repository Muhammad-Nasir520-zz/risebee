import 'package:flutter/material.dart';
import 'package:risebeeapp/core/constants/colors.dart';
import 'package:risebeeapp/ui/screens/base_controller_screen.dart';

class PasswordInputScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: gradientColor,
        ),
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              /// Welcome SurName ... With Back Arrow Button
              ///
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back,size: 33,color: Colors.white,),
                    onPressed: () => Navigator.pop(context),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Welcome to riseBee',style: TextStyle(color: Colors.white,fontSize: 20),),
                      Text('Name Surname',style: TextStyle(color: Colors.white, fontSize: 30),)
                    ],
                  )
                ],
              ),
              SizedBox(height: 20,),
              /// Password Text Area ... With forward arrow button
              ///
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Material(
                  borderRadius: BorderRadius.circular(8.0),
                  elevation: 3.0,
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0)
                     ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Color(0xFF6F6F6F)),
                        contentPadding: EdgeInsets.only(left: 80,top: 12),
                        suffixIcon: Container(
                          width: 65,
                          decoration: BoxDecoration(
                            gradient: gradientColor,
                            borderRadius: BorderRadius.only(topRight: Radius.circular(8.0),bottomRight: Radius.circular(8.0))
                          ),
                          child: IconButton(
                            icon: Icon(Icons.arrow_forward,size: 33,color: Colors.white,),
                            onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => BaseControllerScreen(currentPage: 0))),
                          ),
                        )
                      ),
                    )
                  ),
                )
            )
            ],
          ),
        ),
      ),
    );
  }
}
