import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_app/screens/bookAppointment.dart';
import 'package:medical_app/screens/feedback.dart';
import 'package:medical_app/screens/appointments.dart';
import 'package:medical_app/screens/forumDiscussion.dart';
import 'package:medical_app/screens/medicalRecords.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 350,
            width: double.infinity,
            color: Color(0xffe3f5ff),
            child: Row(
              children: [
                // Avatar

                // CircularAvatar(),
                Column(
                  children: [
                    Text('Sophie Garnier'),
                    Text('Luxembourg'),
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Appointments()),
              );
            },
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child:
                      FaIcon(FontAwesomeIcons.calendarAlt, color: Colors.blue),
                ),
                Text(
                  'My Appointments',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => BookAppointment()),
              );
            },
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Icon(Icons.add_circle_outline, color: Colors.blue),
                ),
                Text(
                  'New Appointments',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => MedicalRecords()),
              );
            },
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: FaIcon(FontAwesomeIcons.fileAlt, color: Colors.blue),
                ),
                Text(
                  'Medical Records',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ForumDiscussion()),
              );
            },
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Icon(Icons.chat_bubble_outline, color: Colors.blue),
                ),
                Text(
                  'Forum',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => FeeedBack()),
              );
            },
            child: Row(
              children: [
                // Icon(Icons.multiline_chart, color: Colors.blue),
                Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: FaIcon(FontAwesomeIcons.chartLine, color: Colors.blue),
                ),
                Text(
                  'Statistic',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => FeeedBack()),
              );
            },
            child: Row(
              children: [
                // Icon(Icons.account_circle, color: Colors.blue),
                Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child:
                      FaIcon(FontAwesomeIcons.userCircle, color: Colors.blue),
                ),
                Text(
                  'Account Settings',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            onTap:(){
               Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => FeeedBack()),
                      );
            },
                      child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Icon(Icons.info_outline, color: Colors.blue),
                ),
                Text(
                  'Help',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Spacer(),
          Row(
            children: [
              // Icon(Icons.import_export, color: Colors.blue),
              // FaIcon(FontAwesomeIcons.loguserCircle, color: Colors.blue),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                // child:
              ),
              Text(
                'Logout',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
