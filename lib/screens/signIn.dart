import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_app/widgets/authButton.dart';

import 'package:medical_app/screens/mobile_number_Auth.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe3f5ff),
      body: SafeArea(
        child: Container(
          alignment: Alignment.topCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 100.0),
              SvgPicture.asset('assets/images/Logo.svg',
                  height: 150, width: 150),
              SizedBox(height: 100.0),
              Text(
                'Welcome',
                style: TextStyle(
                  color: Color(0xff2A2AC0),
                  fontSize: 30,
                ),
              ),
              Text(
                'Sign in to continue',
                style: TextStyle(
                  color: Color(0xff2A2AC0),
                ),
              ),
              SizedBox(height: 40.0),
              AppButton(
                btnText: 'Sign in with mobile number',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MobileAuthScreen()),
                  );
                },
              ),

              Container(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'or',
                  style: TextStyle(
                    color: Color(0xff2A2AC0),
                  ),
                ),
              ),
              //   // Icon(FontAwesomeIcons.facebook, color: Colors.white),
              Container(
                width: 350.0,
                child: RaisedButton(
                  onPressed: () {},
                  padding: EdgeInsets.all(15.0),
                  color: Color(0xff2A2AC0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: FaIcon(FontAwesomeIcons.facebook,
                            color: Colors.white),
                      ),
                      Text(
                        'Sign in with Facebook',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              RichText(
                text: TextSpan(
                  text: 'By signing in, you accept our ',
                  style: TextStyle(
                    color: Color(0xff2A2AC0),
                  ),
                  children: [
                    TextSpan(
                      text: 'Terms and Conditions',
                      style: TextStyle(
                        color: Color(0xff2A2AC0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50.0),
            ],
          ),
        ),
      ),
    );
  }
}
