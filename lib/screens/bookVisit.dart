import 'package:flutter/material.dart';
import 'package:medical_app/widgets/authButton.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class BookVisit extends StatelessWidget {
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
          child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Text(
                'Heartbeat Anomaly',
                style: TextStyle(
                  color: Color(0xff2A2AC0),
                  fontSize: 20,
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(bottom: 10.0),
            //   child: Form(
            //     child: TextFormField(
            //       decoration: InputDecoration(
            //           hintText: 'Search',
            //           suffixIcon: Icon(
            //             Icons.search,
            //           )),
            //     ),
            //   ),
            // ),
            Container(
              child:Column(
                children:[
                  Text(
                'Dear patient,',
                style: TextStyle(
                  color: Color(0xff2A2AC0),
                  fontSize: 20,
                ),
              ),
               Text(
                'There is a heaartbeat anomaly that has been recorder, and you should book a visit with a specialist as soon as possible.',
                style: TextStyle(
                  color: Color(0xff2A2AC0),
                  fontSize: 20,
                ),
              ),
                ],
              ),
            ),
           
            Center(
              child: AppButton(btnText:'Book a visit',
                onPressed: (){},
                ),
            ),
          ]),
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
          Text(
            // '09/04/2020',
            '$date',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
            ),
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
                Icon(
                  Icons.edit,
                  color: Colors.blue,
                ),
                Text(
                  'Modify',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                  ),
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
