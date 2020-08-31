import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_app/widgets/authButton.dart';
import 'package:medical_app/screens/mobile_verification.dart';

class MobileAuthScreen extends StatelessWidget {
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
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Mobile Number',
                  style: TextStyle(
                    color: Color(0xff2A2AC0),
                    fontSize: 30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Text(
                  'The code will be sent to the full mobile number',
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
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.close, color: Colors.grey),
                            hintText: 'Mobile Number',
                            border: InputBorder.none,
                          ),
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              AppButton(
                btnText: 'Continue',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => MobileVerificationScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      // ),
    );
  }
}
