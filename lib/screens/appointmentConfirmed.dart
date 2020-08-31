import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_app/widgets/authButton.dart';

class AppointmentConfirmed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe3f5ff),
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Color(0xff2A2AC0),
          iconSize: 30.0,
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle),
            color: Color(0xff2A2AC0),
            iconSize: 40.0,
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Appointments Confirmed!',
                      style: TextStyle(
                        color: Color(0xff2A2AC0),
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 250,
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
                // margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                child: RichText(
                  text: TextSpan(
                    text: 'Thu, 09 Apr ',
                    style: TextStyle(
                      color: Color(0xff2A2AC0),
                      fontSize: 20,
                    ),
                    children: [
                      TextSpan(
                        text: '08:00',
                        style: TextStyle(
                          color: Colors.greenAccent,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.hotel),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dr. Clara Odding - Dentist',
                            style: TextStyle(
                              color: Color(0xff2A2AC0),
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            '2 Rue de Ermesinde',
                            style: TextStyle(
                              color: Color(0xff2A2AC0),
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'Frisange - Luxembourg 3',
                            style: TextStyle(
                              color: Color(0xff2A2AC0),
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Divider(),
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: SvgPicture.asset(
                  'assets/images/appointment_confirmed.svg',
                  fit: BoxFit.contain,
                  height: 450.0,
                  width: 350.0,
                ),
              ),
              Spacer(),
              Center(
                child: AppButton(
                  btnText: 'Book a new appointment',
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 20.0),
              RichText(
                text: TextSpan(
                  text: '2 days 3 hours ',
                  style: TextStyle(
                    color: Color(0xff2A2AC0),
                    // fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: 'before the appointment',
                      style: TextStyle(
                        color: Color(0xff2A2AC0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.0),
            ],
          ),
        ),
      ),
    );
  }

  Container _appointments({String date, speciality, name}) {
    return Container(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                // '09/04/2020',
                '$date',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
              Spacer(),
              Icon(
                Icons.message,
                color: Colors.grey,
              ),
              Text(
                '20',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Row(
              children: [
                Text(
                  // 'Dentist-Clara Odding',
                  '$speciality-$name',
                  style: TextStyle(
                    color: Color(0xff2A2AC0),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.person_pin,
                  color: Colors.blue,
                ),
                Spacer(),
                Text(
                  'See more',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
