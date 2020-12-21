import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:risebeeapp/ui/screens/bags_screen.dart';
import 'package:risebeeapp/ui/screens/base_controller_screen.dart';
import 'package:risebeeapp/ui/screens/campaigns_screen.dart';
import 'package:risebeeapp/ui/screens/card_settings_screen.dart';
import 'package:risebeeapp/ui/screens/contact_screen.dart';
import 'package:risebeeapp/ui/screens/donations_screen.dart';
import 'package:risebeeapp/ui/screens/first_walkthrough_screen.dart';
import 'package:risebeeapp/ui/screens/follow_us_screen.dart';
import 'package:risebeeapp/ui/screens/home_screen.dart';
import 'package:risebeeapp/ui/screens/impact_screen.dart';
import 'package:risebeeapp/ui/screens/login_button_screen.dart';
import 'package:risebeeapp/ui/screens/marketplace_screen.dart';
import 'package:risebeeapp/ui/screens/my_invest_screen.dart';
import 'package:risebeeapp/ui/screens/password_change.dart';
import 'package:risebeeapp/ui/screens/password_change_done.dart';
import 'package:risebeeapp/ui/screens/password_input_screen.dart';
import 'package:risebeeapp/ui/screens/payments_screen.dart';
import 'package:risebeeapp/ui/screens/pre_register_screen.dart';
import 'package:risebeeapp/ui/screens/profile_screen.dart';
import 'package:risebeeapp/ui/screens/rise_bee_fund_screen.dart';
import 'package:risebeeapp/ui/screens/risegold_screen.dart';
import 'package:risebeeapp/ui/screens/second_walkthrough_screen.dart';
import 'package:risebeeapp/ui/screens/setting_screen.dart';
import 'package:risebeeapp/ui/screens/third_walkthrough_screen.dart';


class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'walk_through_1':
        return MaterialPageRoute(builder: (_) => FirstWalkThroughScreen());
      case 'walk_through_2':
        return MaterialPageRoute(builder: (_) => SecondWalkThroughScreen());
      case 'walk_through_3':
        return MaterialPageRoute(builder: (_) => ThirdWalkThroughScreen());
      case 'pre_register' :
        return MaterialPageRoute(builder: (_) => PreRegisterScreen());
      case 'follow_us_screen':
        return MaterialPageRoute(builder: (_) => FollowUsScreen());
      case 'login_button':
        return MaterialPageRoute(builder: (_) => LoginButtonScreen());
      case 'password_input':
        return MaterialPageRoute(builder: (_) => PasswordInputScreen());
      case 'base_controller':
        int  currentPage = settings.arguments as int;
        return MaterialPageRoute(builder: (_) => BaseControllerScreen(currentPage: currentPage,));
      case 'home_screen':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case 'card_settings':
        return MaterialPageRoute(builder: (_) => CardSettingsScreen());
      case 'payments_screen':
        return MaterialPageRoute(builder: (_) => PaymentsScreen());
      case 'market_place':
        return MaterialPageRoute(builder: (_) => MarketPlaceScreen());
      case 'rise_gold':
        return MaterialPageRoute(builder: (_) => RiseGoldScreen());
      case 'bags_screen':
        return MaterialPageRoute(builder: (_) => BagsScreen());
      case 'campaign_screen':
        return MaterialPageRoute(builder: (_) => CampaignsScreen());
      case 'my_invest':
        return MaterialPageRoute(builder: (_) => MyInvestScreen());
      case 'impact_screen':
        return MaterialPageRoute(builder: (_) => ImpactScreen());
      case 'donation_screen':
        return MaterialPageRoute(builder: (_) => DonationsScreen());
      case 'settings_screen':
        return MaterialPageRoute(builder: (_) => SettingScreen());
      case 'contact_Screen':
        return MaterialPageRoute(builder: (_) => ContactScreen());
      case 'profile_screen':
        return MaterialPageRoute(builder: (_) => ProfileScreen());
      case 'password_input':
        return MaterialPageRoute(builder: (_) => PasswordInputScreen());
      case 'password_change':
        return MaterialPageRoute(builder: (_) => PasswordChange());
      case 'password_change_done':
        return MaterialPageRoute(builder: (_) => PasswordChangeDone());
      case 'rise_bee_fund':
        return MaterialPageRoute(builder: (_) => RiseBeeFundScreen());
      default:
        return MaterialPageRoute(
            builder: (_) =>
                Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                )
        );
    }
  }
}