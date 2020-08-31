import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_app/screens/signIn.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final List<Map<String, String>> onBoarding = [
    {
      'image': 'assets/images/onboarding_1.svg',
      'text1': 'Find your Doctor',
      'text2': '',
    },
    {
      'image': 'assets/images/onboarding_3.svg',
      'text1': 'Store your',
      'text2': 'Medical Records',
    },
    {
      'image': 'assets/images/onboarding_2.svg',
      'text1': 'Discuss in the',
      'text2': 'Forum',
    }
  ];

  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe3f5ff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 60.0),
          SvgPicture.asset('assets/images/Logo.svg', height: 150, width: 150),
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: onBoarding.length,
              itemBuilder: (_, index) {
                return Center(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 30.0),
                      Text(
                        onBoarding[index]['text1'],
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Color(0xff2A2AC0),
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        onBoarding[index]['text2'],
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Color(0xff2A2AC0),
                          fontSize: 25,
                        ),
                      ),
                      // SizedBox(height: 40.0),
                      Padding(
                        padding: EdgeInsets.only(top: 100.0),
                        child: SvgPicture.asset(onBoarding[index]['image'],
                            width: double.infinity,
                            height: 250.0,
                            fit: BoxFit.cover),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 40.0),
          Padding(
            padding: EdgeInsets.all(30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                InkWell(
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        color: Color(0xff2A2AC0),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (context) => SignInScreen()),
                          (route) => false);
                    }),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: _dots(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: _dots(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: _dots(),
                    ),
                  ],
                ),
                InkWell(
                    child: Text(
                      'Next',
                      style: TextStyle(
                        color: Color(0xff2A2AC0),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        _pageController.nextPage(
                            duration: Duration(milliseconds: 1),
                            curve: Curves.easeInOut);
                      });
                    }),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _dots() {
    return Container(
      width: 12.0,
      height: 12.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey,
      ),
    );
  }
}
