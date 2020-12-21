import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:risebeeapp/core/constants/colors.dart';
import 'package:risebeeapp/ui/custom_widgets/custom_bottom_navigation_bar.dart';
import 'package:risebeeapp/ui/custom_widgets/custom_button.dart';
import 'package:risebeeapp/ui/custom_widgets/display_and_take_profile_image.dart';


class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: gradientColor
        ),
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///
              /// Custom App Bar
              Container(
                height: 70,
                child: Icon(Icons.arrow_back,color: Colors.white,),
              ),
              ///
              /// Profile image and pick image button
              DisplayAndTakeProfileImage(),

              SizedBox(height: 20,),
              ///
              /// More setting options .... Having personal details, change password, log out button etc
              ///
              moreSettingsOptions(context),
            ],
          ),
        ),
      ),
      /// Custom Bottom Navigation Bar....
      ///
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }

  Widget moreSettingsOptions(context){
    return Expanded(
      child: ListView(
        shrinkWrap: true,
        children: [
          Text('Profile',style: TextStyle(fontSize: 16,color: whiteColor),),
          /// Personal details about user
          ListTileInSetting(leadingIcon: Icons.account_circle,text: 'Personal Details',trailingIcon: Icons.navigate_next,
            onPressed: ()=>Navigator.pushNamed(context, 'profile_screen'),),
          ///
          /// App security
          Text('App Security',style: TextStyle(fontSize: 16,color: whiteColor)),
          ///
          /// Change your password
          ListTileInSetting(leadingIcon: Icons.more_horiz,text: 'Change Password',trailingIcon: Icons.navigate_next,
            onPressed: ()=>Navigator.pushNamed(context, 'password_change'),),
          ///
          /// About us
          Text('About Us',style: TextStyle(fontSize: 16,color: whiteColor)),
          ///
          /// our website
          ListTileInSetting(leadingIcon: Icons.web_asset,text: 'www.risebee.com',trailingIcon: Icons.navigate_next,
            onPressed: null,),
          ///
          /// our instagram link
          ListTileInSetting(leadingIcon: Icons.camera_alt,text: 'Instagram',trailingIcon: Icons.navigate_next,
            onPressed: null,),
          ///
          ///
          ListTileInSetting(leadingIcon: Icons.perm_contact_calendar,text: 'Contact',trailingIcon: Icons.navigate_next,
            onPressed: ()=>Navigator.pushNamed(context, 'contact_Screen'),),
          ///
          /// email us
          ListTileInSetting(leadingIcon: Icons.mail_outline,text: 'support@risebee.com',trailingIcon: Icons.navigate_next,
            onPressed: null,),
          ///
          /// our policy , terms and condition
          Text('Legal',style: TextStyle(fontSize: 16,color: whiteColor)),
          ListTileInSetting(leadingIcon: null,text: 'Privacy Policy',trailingIcon: Icons.navigate_next,onPressed: null,),
          ListTileInSetting(leadingIcon: null,text: 'Terms & Condition',trailingIcon: Icons.navigate_next,onPressed: null,),

          /// Log out Button ......
          ///
          CustomButton(
            title: 'Log Out',
            elevation: 3.0,
            onChange: () => Navigator.pushReplacementNamed(context, 'login_button'),
            isColor: false,
          )
        ],
      ),
    );
  }
}
///
/// ListTile In Setting widget
class ListTileInSetting extends StatelessWidget {
  String text;
  IconData leadingIcon,trailingIcon;
  Function onPressed;
  ListTileInSetting({this.leadingIcon,this.text,this.trailingIcon,this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: ListTile(
        leading: Icon(leadingIcon,color: whiteColor,),
        title: Text(text,style: TextStyle(fontSize: 16,color: whiteColor)),
        trailing: Icon(trailingIcon,color: whiteColor,),
      ),
    );
  }
}
