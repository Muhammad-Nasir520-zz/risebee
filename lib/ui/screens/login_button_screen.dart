import 'package:flutter/material.dart';
import 'package:risebeeapp/core/constants/text_styles.dart';
import 'package:risebeeapp/ui/custom_widgets/custom_button.dart';


class LoginButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(),
            /// Welcome Surname and Login Button Area...
            ///
            welcomeAndLoginButton(context),
            /// Sign Up Button ......
            ///
            CustomButton(
              title: 'Sign Up!',
              elevation: 3.0,
              onChange: () => Navigator.pushReplacementNamed(context, 'walk_through_1'),
              isColor: true,
            )
          ],
        ),
      ),
    );
  }

  Widget welcomeAndLoginButton(context){
    return Column(
      children: <Widget>[
        Text('Welcome to',style: TextStyle(fontSize: 20),),
        Text('riseBee',style: gradientTitleStyle,),
        SizedBox(height: 10,),
        Text('Name Surname',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),),
        CustomButton(
          title: 'Log In',
          elevation: 4.0,
          onChange: () => Navigator.pushNamed(context, 'password_input'),
          isColor: false,
        ),
        SizedBox(height: 5),
        GestureDetector(
          onTap: (){
            print('Forgot Password');
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(),
                Text('Forgot you password?'),
              ],
            ),
          ),
        )
      ],
    );
  }
}
