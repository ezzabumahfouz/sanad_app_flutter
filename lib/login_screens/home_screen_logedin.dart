import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:sanad_app_flutter/login_screens/more_screen.dart';
import 'package:sanad_app_flutter/login_screens/service_screen.dart';
import 'package:sanad_app_flutter/login_screens/setting_screen.dart';
import 'package:sanad_app_flutter/not_login/help_screen.dart';

class LoginHomePage extends StatefulWidget {
  const LoginHomePage({Key? key}) : super(key: key);

  @override
  State<LoginHomePage> createState() => _LoginHomePageState();
}

class _LoginHomePageState extends State<LoginHomePage> {
  int _currentIndex = 0;
  //

  //
  final _tabs = [
    Home_Page_Class(),
    ServiceClass(),
    HelpClass(),
    MoreClass(),
    SettingClass()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black26,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.greenAccent,
          iconSize: 20.0,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.house), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.book), label: 'Service'),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.circle), label: 'Help'),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.squarePlus), label: 'More'),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.gear), label: 'Setting'),
          ]),
    );
  }
}

class Home_Page_Class extends StatelessWidget {
  Home_Page_Class({Key? key}) : super(key: key);

  final Stream<QuerySnapshot> USERS =
      FirebaseFirestore.instance.collection('USERS').snapshots();

  final user = FirebaseAuth.instance.currentUser!;
  TextStyle S1 = TextStyle(color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        body: SafeArea(
            child: Center(
                child: SingleChildScrollView(
                    child: Column(children: [
          Container(
              height: 40.0,
              width: 130.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('assets/sanad_logo.jpeg')))),
          SizedBox(height: 20.0),
          Container(
              padding: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 20.0),
              color: Colors.grey[800],
              height: 200.0,
              child: Column(children: [
                Expanded(
                    flex: 4,
                    child: Row(children: [
                      Container(
                          margin: EdgeInsets.only(bottom: 20.0),
                          height: 100.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              border: Border.all(color: Colors.grey),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/ezz.jpeg')))),
                      SizedBox(width: 27.0),
                      Expanded(
                          child: Container(
                              color: Colors.transparent,
                              child: StreamBuilder(
                                  stream: USERS,
                                  builder: (BuildContext context,
                                      AsyncSnapshot<QuerySnapshot> snapshot) {
                                    if (snapshot.hasError) {
                                      return Text('Error in data');
                                    }
                                    if (snapshot.connectionState ==
                                        ConnectionState.waiting) {
                                      return Center(
                                          child: CircularProgressIndicator(
                                              color: Colors.white));
                                    }
                                    final data = snapshot.requireData;
                                    return ListView.builder(
                                        itemCount: 1,
                                        itemBuilder: (context, index) {
                                          return Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                    '${data.docs[index]['NAME']}',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 25.0,
                                                        fontWeight:
                                                            FontWeight.w500)),
                                                SizedBox(height: 5.0),
                                                Row(children: [
                                                  Icon(FontAwesomeIcons.user,
                                                      size: 13.0,
                                                      color: Colors.white),
                                                  SizedBox(width: 15.0),
                                                  Text(
                                                      '${data.docs[index]['ID']}',
                                                      style: S1)
                                                ]),
                                                Row(children: [
                                                  Icon(
                                                      FontAwesomeIcons.envelope,
                                                      size: 13.0,
                                                      color: Colors.white),
                                                  SizedBox(width: 15.0),
                                                  Text(
                                                      '${data.docs[index]['EMAIL']}',
                                                      style: S1)
                                                ]),
                                                Row(children: [
                                                  Icon(FontAwesomeIcons.phone,
                                                      color: Colors.white,
                                                      size: 13.0),
                                                  SizedBox(width: 15.0),
                                                  Text(
                                                      '${data.docs[index]['PHONE']}',
                                                      style: S1)
                                                ])
                                              ]);
                                        });
                                  })))
                    ])),
                Expanded(
                    child: Row(children: [
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.green),
                      child: TextButton(
                          onPressed: () {},
                          child: Text('Profile',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 12.0)))),
                  SizedBox(width: 20.0),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.green),
                      child: TextButton.icon(
                          icon: Icon(FontAwesomeIcons.check,
                              size: 14.0, color: Colors.white),
                          onPressed: () {},
                          label: Text('Digital Identify Activated',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 12.0))))
                ]))
              ])),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Personal Information',
                        style: TextStyle(color: Colors.white, fontSize: 25.0)),
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey[600]),
                        child: Text('SEE ALL',
                            style: TextStyle(color: Colors.white)))
                  ])),
          Container(
              padding: EdgeInsets.only(left: 5.0),
              width: MediaQuery.of(context).size.width,
              color: Colors.transparent,
              child: Wrap(spacing: 10.0, runSpacing: 10.0, children: [
                Container(
                    width: MediaQuery.of(context).size.width / 3 - 10.0,
                    height: MediaQuery.of(context).size.width / 3 - 10.0,
                    decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(FontAwesomeIcons.virus,
                              color: Colors.grey, size: 50.0),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HealthClass()),
                                );
                              },
                              child: Text('My Health ID',
                                  style: TextStyle(color: Colors.white)))
                        ])),
                Container(
                    width: MediaQuery.of(context).size.width / 3 - 10.0,
                    height: MediaQuery.of(context).size.width / 3 - 10.0,
                    decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(FontAwesomeIcons.file,
                              color: Colors.grey, size: 50.0),
                          TextButton(
                              onPressed: null,
                              child: Text('My Information',
                                  style: TextStyle(color: Colors.white)))
                        ])),
                Container(
                    width: MediaQuery.of(context).size.width / 3 - 10.0,
                    height: MediaQuery.of(context).size.width / 3 - 10.0,
                    decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(FontAwesomeIcons.book,
                              color: Colors.grey, size: 50.0),
                          TextButton(
                              onPressed: null,
                              child: Text('My Documents',
                                  style: TextStyle(color: Colors.white)))
                        ])),
                Container(
                    width: MediaQuery.of(context).size.width / 3 - 10.0,
                    height: MediaQuery.of(context).size.width / 3 - 10.0,
                    decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(FontAwesomeIcons.ccVisa,
                              color: Colors.grey, size: 50.0),
                          TextButton(
                              onPressed: null,
                              child: Text('My Payment',
                                  style: TextStyle(color: Colors.white)))
                        ])),
                Container(
                    width: MediaQuery.of(context).size.width / 3 - 10.0,
                    height: MediaQuery.of(context).size.width / 3 - 10.0,
                    decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(FontAwesomeIcons.signature,
                              color: Colors.grey, size: 50.0),
                          TextButton(
                              onPressed: null,
                              child: Text('My Signature',
                                  style: TextStyle(color: Colors.white)))
                        ]))
              ])),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Personal Services',
                        style: TextStyle(color: Colors.white, fontSize: 25.0)),
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey[600]),
                        child: Text('SEE ALL',
                            style: TextStyle(color: Colors.white)))
                  ])),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Row(children: [
              Container(
                  height: MediaQuery.of(context).size.width / 3 - 10.0,
                  decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset('assets/sanad_tag.webp',
                            height: 50.0, width: 60.0),
                        TextButton(
                            onPressed: null,
                            child: Text('Issue Non-Criminal Certificate',
                                style: TextStyle(color: Colors.white)))
                      ])),
              SizedBox(width: 10.0),
              Container(
                  width: MediaQuery.of(context).size.width / 3 - 10.0,
                  height: MediaQuery.of(context).size.width / 3 - 10.0,
                  decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset('assets/sanad_tag.webp',
                            height: 50.0, width: 60.0),
                        TextButton(
                            onPressed: null,
                            child: Text('Custome Tariff',
                                style: TextStyle(color: Colors.white)))
                      ])),
            ]),
          ),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Personal Services',
                        style: TextStyle(color: Colors.white, fontSize: 25.0)),
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey[600]),
                        child: Text('SEE ALL',
                            style: TextStyle(color: Colors.white)))
                  ])),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                Container(
                    padding: EdgeInsets.all(10.0),
                    width: 330.0,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Flexible(
                              flex: 1,
                              child: Image.asset('assets/sanad_tag.webp',
                                  height: 40.0, width: 40.0)),
                          Flexible(
                              flex: 3,
                              child: Text(
                                  'بامكانكم تفعيل الهوية الرقمية من خلال تطبيق عربي موبايل',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15.0),
                                  textAlign: TextAlign.center)),
                        ])),
                Container(
                    padding: EdgeInsets.all(10.0),
                    width: 280.0,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Flexible(
                              flex: 1,
                              child: Image.asset('assets/sanad_tag.webp',
                                  height: 40.0, width: 40.0)),
                          Flexible(
                              flex: 3,
                              child: Text(
                                  'بامكانكم تفعيل الهوية الرقمية من خلال تطبيق عربي موبايل',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15.0),
                                  textAlign: TextAlign.center)),
                        ]))
              ]))
        ])))));
  }
}

//
//
//HEALTH ID//
//
//
class HealthClass extends StatelessWidget {
  HealthClass({Key? key}) : super(key: key);
  final Stream<QuerySnapshot> USERS =
      FirebaseFirestore.instance.collection('USERS').snapshots();
  TextStyle S1 = TextStyle(color: Colors.white, fontSize: 17.0);
  TextStyle S2 = TextStyle(color: Colors.white, fontSize: 14.0);

  getCustomFormattedDateTime(String givenDateTime, String dateFormat) {
    // dateFormat = 'MM/dd/yy';
    final DateTime docDateTime = DateTime.parse(givenDateTime);
    return DateFormat(dateFormat).format(docDateTime);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
          child: Center(
              child: SingleChildScrollView(
                  child: Column(children: [
        Container(
            height: 40.0,
            width: 130.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage('assets/sanad_logo.jpeg')))),
        Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 180.0,
            width: 180.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage('assets/sanad_QR.jpeg')))),
        Container(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
            width: 350.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(color: Colors.green)),
            child: Row(children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/ezz.jpeg'),
                radius: 36.0,
              ),
              SizedBox(width: 20.0),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text('IZZELDEEN AHMAD \nABDELSALAM ABU \nMAHFOUZ', style: S1),
                SizedBox(height: 10.0),
                Text(
                  'ID Number: 9991021619',
                  style: TextStyle(color: Colors.white),
                )
              ])
            ])),
        Container(
            height: 220.0,
            width: 350.0,
            color: Colors.transparent,
            child: StreamBuilder(
                stream: USERS,
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.hasError) {
                    return Text('Error in data');
                  }
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                        child: CircularProgressIndicator(color: Colors.white));
                  }
                  final data = snapshot.requireData;
                  return ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 15.0),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(children: [
                                  Container(
                                      padding: EdgeInsets.all(4.0),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.green, width: 2.0),
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                      child: Text(
                                          '${data.docs[index]['DOSE1']}',
                                          style: S1)),
                                  SizedBox(width: 10.0),
                                  Text('Dose 1 - ', style: S1),
                                  SizedBox(width: 5.0),
                                  Text(
                                    data.docs[index]['DOSE-1T']
                                        .toDate()
                                        .toString(),
                                    style: S1,
                                  )
                                ]),
                              ),
                              SizedBox(height: 5.0),
                              Container(
                                  margin: EdgeInsets.symmetric(vertical: 15.0),
                                  height: 2.0,
                                  width: 350.0,
                                  color: Colors.grey),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(children: [
                                  Container(
                                      padding: EdgeInsets.all(4.0),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.green, width: 2.0),
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                      child: Text(
                                          '${data.docs[index]['DOSE2']}',
                                          style: S1)),
                                  SizedBox(width: 10.0),
                                  Text('Dose 2 - ', style: S1),
                                  SizedBox(width: 5.0),
                                  Text(
                                    '${data.docs[index]['DOSE-2T'].toDate()}',
                                    style: S1,
                                  )
                                ]),
                              ),
                              SizedBox(height: 5.0),
                              Container(
                                  margin: EdgeInsets.symmetric(vertical: 15.0),
                                  height: 2.0,
                                  width: 350.0,
                                  color: Colors.grey),
                              SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(children: [
                                    Container(
                                        padding: EdgeInsets.all(4.0),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.green,
                                                width: 2.0),
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                        child: Text(
                                            '${data.docs[index]['DOSE3']}',
                                            style: S1)),
                                    SizedBox(width: 10.0),
                                    Text('Dose 3 - ', style: S1),
                                    SizedBox(width: 5.0),
                                    Text(
                                        data.docs[index]['DOSE-3T']
                                            .toDate()
                                            .toString(),
                                        style: S1)
                                  ]))
                            ]);
                      });
                })),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Container(
              height: 90.0,
              width: 90.0,
              color: Colors.black,
              child: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                    Icon(
                      FontAwesomeIcons.clockRotateLeft,
                      color: Colors.white,
                    ),
                    Text('Previous Results',
                        style: S2, textAlign: TextAlign.center)
                  ]))),
          Container(
              height: 90.0,
              width: 90.0,
              color: Colors.black,
              child: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                    Icon(
                      FontAwesomeIcons.clockRotateLeft,
                      color: Colors.white,
                    ),
                    Text('Previous Results',
                        style: S2, textAlign: TextAlign.center)
                  ]))),
          Container(
              height: 90.0,
              width: 90.0,
              color: Colors.black,
              child: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                    Icon(
                      FontAwesomeIcons.clockRotateLeft,
                      color: Colors.white,
                    ),
                    Text('Previous Results',
                        style: S2, textAlign: TextAlign.center)
                  ])))
        ]),
        SizedBox(height: 20.0),
        Text(
            'Somethings not right? Please call our National Contact \nCenter 065008080',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white))
      ])))));
}
