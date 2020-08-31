import 'package:flutter/material.dart';
import 'package:medical_app/widgets/authButton.dart';

class MedicalRecords extends StatefulWidget {
  @override
  _MedicalRecordsState createState() => _MedicalRecordsState();
}

class _MedicalRecordsState extends State<MedicalRecords>
    with SingleTickerProviderStateMixin {  

      final List<Tab> _tabs = [
    Tab(text: 'Clinics'),
    Tab(text: 'Lab tests'),
    Tab(text: 'Medicines'),
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
          onPressed: () {
            Navigator.of(context).pop();
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
                'Medical Records',
                style: TextStyle(
                  color: Color(0xff2A2AC0),
                  fontSize: 20,
                ),
              ),
            ),
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
            TabBar(
                controller: _tabController,
                tabs: _tabs,
                onTap: (int index) {
                  setState(() {
                    selectedIndex = index;
                    _tabController.animateTo(index);
                  });
                },
                // indicator: Decoration(),
                ),
            Flexible(
              child: IndexedStack(
                index: selectedIndex,
                children: [
                  Visibility(
                    child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return _appointments(
                    date: '09/04/2020',
                    speciality: 'Dentist',
                    name: 'Clara Odding',
                  );
                },
              
                    ),
                    maintainState: true,
                    visible: selectedIndex == 0,
                  ),

                  Visibility(
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return _appointments(
                          date: '09/04/2020',
                          speciality: 'Dentist',
                          name: 'Clara Odding',
                        );
                      },
                    ),
                    maintainState: true,
                    visible: selectedIndex == 1,
                  ),

                  Visibility(
                    child: ListView.builder(
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return _appointments(
                          date: '09/04/2020',
                          speciality: 'Dentist',
                          name: 'Clara Odding',
                        );
                      },
                    ),
                    maintainState: true,
                    visible: selectedIndex == 2,
                  ),
                ],
              ),
            ),
            
          ]),
        ),
      ),
    );
  }
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
                  Icons.file_download,
                  color: Colors.blue,
                ),
                Text(
                  'Download',
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
// }
