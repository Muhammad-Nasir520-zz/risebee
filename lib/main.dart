import 'package:flutter/material.dart';
import 'package:risebeeapp/router.dart';
import 'package:risebeeapp/ui/screens/base_controller_screen.dart';
import 'package:risebeeapp/ui/screens/first_walkthrough_screen.dart';
import 'package:risebeeapp/ui/screens/home_screen.dart';
import 'package:risebeeapp/ui/screens/pre_register_screen.dart';
import 'package:risebeeapp/ui/screens/splash_screen.dart';
import 'package:risebeeapp/ui/screens/third_walkthrough_screen.dart';
import 'core/constants/text_styles.dart';
import 'introduction_screen.dart';
import 'package:flutter/services.dart';
import './src/model/page_decoration.dart';
import './src/model/page_view_model.dart';




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'risebee',
      onGenerateRoute: Router.generateRoute,
      theme: ThemeData(
        accentColor: Color(0xFF36A381),
        primaryColor: Color(0xFF4690A3),
      ),
      home: OnBoardingPage(), // Splashscreen was there
    );
  }
}



class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => PreRegisterScreen()),
    );
  }

  Widget _buildImage(String assetName) {
    return Align(
      child: Image.asset('assets/images/$assetName.png', width: 350.0),
      alignment: Alignment.bottomCenter,
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      pages: [
        // PageViewModel(
        //   title: "Fractional shares",
        //   body:
        //   "Instead of having to buy an entire share, invest any amount you want.",
        //   image: _buildImage('img1'),
        //   decoration: pageDecoration,
        // ),
        // PageViewModel(
        //   title: "Learn as you go",
        //   body:
        //   "Download the Stockpile app and master the market with our mini-lesson.",
        //   image: _buildImage('img2'),
        //   decoration: pageDecoration,
        // ),
        PageViewModel(
          bodyWidget: SingleChildScrollView(
            child: Column(
              children: [
                Text('Welcome to',style: TextStyle(fontSize: 20),),
                Text('riseBee', style: gradientTitleStyle,),
                Text('Are you ready to dive\nin a whole new Banking Experience?',textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
                Container(
                  child: Image.asset('assets/images/first_splash.png',height: MediaQuery.of(context).size.height*0.65,),
                ),
              ],
            ),
          ),
          //image: _buildImage('first_splash'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          body: "Another beautiful body text for this example onboarding",
          image: _buildImage('img2'),
          footer: RaisedButton(
            onPressed: () {
              introKey.currentState?.animateScroll(0);
            },
            child: const Text(
              'FooButton',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.black54,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          bodyWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Click on ", style: bodyStyle),
              Icon(Icons.edit),
              Text(" to edit a post", style: bodyStyle),
            ],
          ),
          image: _buildImage('img1'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text('Previous'),
      next: const Text("Next"),
      done: const Text('Next', style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(10.0, 10.0),
        activeColor: Color(0xFF36A381),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: const Center(child: Text("This is the screen after Introduction")),
    );
  }
}

