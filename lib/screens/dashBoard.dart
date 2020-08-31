import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_app/widgets/appDrawer.dart';
import 'package:medical_app/screens/appointments.dart';
import 'package:medical_app/screens/forumDiscussion.dart';
import 'package:medical_app/screens/medicalRecords.dart';

class DashBoard extends StatelessWidget {
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
        elevation: 1.0,
        leading: IconButton(
          icon: Icon(Icons.menu),
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
              'Dashboard',
              style: TextStyle(
                color: Color(0xff2A2AC0),
                fontSize: 30,
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Form(
              child: Container(
                // width: 300,
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search, color: Colors.grey),
                    hintText: 'Search',
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.phone,
                ),
              ),
            ),
            Flexible(
              child: GridView(
                children: [
                  _dashBoardCard(
                    img: cardInfo[0]['image'],
                    text: cardInfo[0]['text'],
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Appointments()),
                      );
                    },
                  ),
                  _dashBoardCard(
                    img: cardInfo[1]['image'],
                    text: cardInfo[1]['text'],
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => MedicalRecords()),
                      );
                    },
                  ),
                  _dashBoardCard(
                    img: cardInfo[2]['image'],
                    text: cardInfo[2]['text'],
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ForumDiscussion()),
                      );
                    },
                  ),
                  _dashBoardCard(
                    img: cardInfo[3]['image'],
                    text: cardInfo[3]['text'],
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => DashBoard()),
                      );
                    },
                  ),
                ],
                // },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15.0,
                  crossAxisSpacing: 15.0,
                ),
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
              ),
            ),
          ],
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
