import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_app/widgets/authButton.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_app/screens/dashBoard.dart';

class LocationScreen extends StatelessWidget {
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
                'Location',
                style: TextStyle(
                  color: Color(0xff2A2AC0),
                  fontSize: 30.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30, top: 10.0),
                child: Text(
                  'Please enter your location',
                  style: TextStyle(
                    color: Color(0xff2A2AC0),
                  ),
                ),
              ),
              Form(
                child: Container(
                  width: 350,
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  margin:
                      EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon:
                          Icon(Icons.person_pin_circle, color: Colors.grey),
                      hintText: 'Your Location',
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 20),
                child: AppButton(
                  btnText: 'Continue',
                  onPressed: () {
                    Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => DashBoard()),
                          );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
