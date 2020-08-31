import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_app/widgets/authButton.dart';
import 'package:medical_app/screens/mobile_number_Auth.dart';
import 'package:medical_app/screens/location.dart';

class MobileVerificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe3f5ff),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 100.0),
              SvgPicture.asset('assets/images/Logo.svg',
                  height: 150, width: 150),
              SizedBox(height: 100.0),
              Text(
                'Verification',
                style: TextStyle(
                  color: Color(0xff2A2AC0),
                  fontSize: 30.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30, top: 10.0),
                child: Text(
                  'Insert your code here',
                  style: TextStyle(
                    color: Color(0xff2A2AC0),
                  ),
                ),
              ),
              Form(
                child: Container(
                  width: 350,
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  margin: EdgeInsets.symmetric(vertical: 30.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                      // SizedBox(width: 10.0),
                      // Expanded(
                      //   child: TextFormField(
                      //     keyboardType: TextInputType.phone,
                      //   ),
                      // ),
                      // SizedBox(width: 10.0),
                      // Expanded(
                      //   child: TextFormField(
                      //     keyboardType: TextInputType.phone,
                      //   ),
                      // ),
                      // SizedBox(width: 10.0),
                      // Expanded(
                      //   child: TextFormField(
                      //     keyboardType: TextInputType.phone,
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 20),
                child: AppButton(
                  btnText: 'Continue',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LocationScreen()),
                    );
                  },
                ),
              ),
              Container(
                width: 300.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Resend code',
                      style: TextStyle(
                        color: Color(0xff2A2AC0),
                      ),
                    ),
                    InkWell(
                        child: Text(
                          'Change Number',
                          style: TextStyle(
                            color: Color(0xff2A2AC0),
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => MobileAuthScreen()),
                          );
                        }),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
