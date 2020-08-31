import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_app/widgets/appDrawer.dart';
import 'package:medical_app/widgets/authButton.dart';
import 'package:medical_app/widgets/doctor.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class FeeedBack extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final List<Map<String, String>> cardInfo = [
    {
      'image': 'assets/images/appointment.svg',
      'text': '',
    },
    {
      'image': 'assets/images/records.svg',
      'text': '',
    },
    {
      'image': 'assets/images/forum.svg',
      'text': '',
    },
    {
      'image': 'assets/images/account_settings.svg',
      'text': '',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0xffe3f5ff),
      drawer: AppDrawer(),
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Color(0xff2A2AC0),
          iconSize: 30.0,
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle),
            color: Color(0xff2A2AC0),
            iconSize: 40.0,
            onPressed: () {},
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(left: 20.0, bottom: 20.0),
            child: Text(
              'Leave your feedback',
              style: TextStyle(
                color: Color(0xff2A2AC0),
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
          
            children: [
              doctorsCard(),
              Divider(),
              SmoothStarRating(
                rating: 0.0,
                spacing: 30.0,
                size: 50.0,
                borderColor: Colors.orange,
                color: Colors.orange,
              ),
              Form(
                child: Container(
                  // width: 300,
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  margin: EdgeInsets.symmetric(vertical: 30.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  child: TextFormField(
                    minLines: 10,
                    maxLines: 30,
                    decoration: InputDecoration(
                      hintText: 'Write your feedback',
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                ),
              ),
              AppButton(
                btnText: 'Add feedback',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _dashBoardCard(
      {@required String img, text, @required Function onPressed}) {
    return InkWell(
      onTap: onPressed,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child:
            // Column(
            //   children: [
            // Text(
            //   '$text',
            //   style: TextStyle(
            //     color: Color(0xff2A2AC0),
            //     fontSize: 30,
            //   ),
            // ),
            // Expanded(
            //             child:
            SvgPicture.asset(
          '$img',
          fit: BoxFit.contain,
          height: 150,
          width: 150,
        ),
        //     ),
        //   ],
        // ),
        elevation: 2.0,
      ),
    );
  }
}
