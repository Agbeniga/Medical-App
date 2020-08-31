import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_app/widgets/appDrawer.dart';
import 'package:medical_app/widgets/authButton.dart';
import 'package:medical_app/widgets/doctor.dart';

class BookAppointment extends StatefulWidget {
  @override
  _BookAppointmentState createState() => _BookAppointmentState();
}

class _BookAppointmentState extends State<BookAppointment>
    with SingleTickerProviderStateMixin {
  final List<Tab> _tabs = [
    Tab(text: 'Doctor'),
    Tab(text: 'Clinic'),
    Tab(text: 'Feedback'),
  ];

  TabController _tabController;
  int selectedIndex = 0;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _tabController = TabController(
      length: 3,
      vsync: this,
      initialIndex: selectedIndex,
    );
    super.initState();
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
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
              'Book an appointment',
              style: TextStyle(
                color: Color(0xff2A2AC0),
                fontSize: 30,
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
            child: Column(
              children: [
                Form(
                  child: Column(
                    children: [
                      Container(
                        // width: 300,
                        margin: EdgeInsets.symmetric(vertical: 15.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search, color: Colors.grey),
                            hintText: 'Doctor, Specialities...',
                            border: InputBorder.none,
                          ),
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 15.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon:
                                Icon(Icons.my_location, color: Colors.grey),
                            hintText: 'Select Area',
                            border: InputBorder.none,
                          ),
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                      Container(
                        // width: 300,
                        margin: EdgeInsets.symmetric(vertical: 30.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search, color: Colors.grey),
                            hintText: 'Select Date',
                            border: InputBorder.none,
                          ),
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: AppButton(
                          btnText: 'Continue',
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                // TabBar(
                //   controller: _tabController,
                //   tabs: _tabs,
                //   onTap: (int index) {
                //     setState(() {
                //       selectedIndex = index;
                //       _tabController.animateTo(index);
                //     });
                //   },
                //   // indicator: Decoration(),
                //   ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    doctorsCard(),
                  ],
                ),

                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    doctorsCard(),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    doctorsCard(),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    doctorsCard(),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    doctorsCard(),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    doctorsCard(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
