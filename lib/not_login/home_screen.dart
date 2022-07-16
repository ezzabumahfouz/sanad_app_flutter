import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sanad_app_flutter/not_login/about_screen.dart';
import 'package:sanad_app_flutter/not_login/guidelines_screen.dart';
import 'package:sanad_app_flutter/not_login/help_screen.dart';
import 'package:sanad_app_flutter/not_login/nearme_screen.dart';
import 'package:sanad_app_flutter/not_login/signin_screen.dart';

class HomeClass extends StatefulWidget {
  const HomeClass({Key? key}) : super(key: key);

  @override
  State<HomeClass> createState() => _HomeClassState();
}

class _HomeClassState extends State<HomeClass> {
  int _currentIndex = 2;
  // ignore: non_constant_identifier_names
  final _tabs = [
    HelpClass(),
    NearmeClass(),
    LoginClass(),
    GuidelinesClass(),
    AboutClass()
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
          selectedItemColor: Colors.green,
          unselectedFontSize: 12.0,
          selectedFontSize: 12.0,
          iconSize: 20.0,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.circleQuestion), label: 'Help'),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.locationDot), label: 'Near Me'),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.briefcase), label: 'Sign in'),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.star), label: 'Guidelines'),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.circle), label: 'About'),
          ]),
    );
  }
}

class LoginClass extends StatelessWidget {
  LoginClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color1 = Colors.white;

    return SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            IconButton(
                onPressed: null,
                icon: Icon(FontAwesomeIcons.language, color: color1)),
            IconButton(
                onPressed: null,
                icon: Icon(
                  FontAwesomeIcons.temperatureFull,
                  color: color1,
                ))
          ])),
      Container(
          height: 220.0,
          width: 250.0,
          decoration: BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage(
                    'assets/login_photo.jpeg',
                  )))),
      SizedBox(height: 25.0),
      Container(
          width: 300.0,
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 3.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0), color: Colors.black),
          child: TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SigninClass()));
            },
            child: Text('Sign in / Sign Up',
                style: TextStyle(color: Colors.white, fontSize: 20.0)),
          )),
      SizedBox(height: 25.0),
      Container(
          width: 300.0,
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 3.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0), color: Colors.white),
          child: TextButton(
            onPressed: null,
            child: Text('Continue as Guest',
                style: TextStyle(color: Colors.grey, fontSize: 20.0)),
          )),
      SizedBox(height: 15.0),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
            width: 147.5,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.green),
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.transparent),
            child: TextButton(
                onPressed: null,
                child: Row(children: [
                  Icon(
                    Icons.key,
                    size: 20.0,
                    color: color1,
                  ),
                  SizedBox(width: 5.0),
                  Text('Inspection',
                      style: TextStyle(color: color1, fontSize: 15.0)),
                ]))),
        SizedBox(width: 5.0),
        Container(
            width: 147.5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(color: Colors.green),
                color: Colors.transparent),
            child: TextButton(
                onPressed: null,
                child: Row(children: [
                  Icon(
                    Icons.key,
                    size: 20.0,
                    color: color1,
                  ),
                  SizedBox(width: 5.0),
                  Text('Health Identify',
                      style: TextStyle(color: color1, fontSize: 13.0)),
                ])))
      ]),
      SizedBox(height: 5.0),
      Container(
          width: 300.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(color: Colors.green),
              color: Colors.transparent),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(Icons.map, size: 20, color: color1),
            TextButton(
              onPressed: null,
              child: Text('Digital Documents QR Scanner',
                  style: TextStyle(color: color1, fontSize: 17.0)),
            )
          ])),
      SizedBox(height: 5.0),
      Container(
          width: 300.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(color: Colors.green),
              color: Colors.transparent),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(Icons.map, size: 20, color: color1),
            TextButton(
              onPressed: null,
              child: Text('Verify the digital signature',
                  style: TextStyle(color: color1, fontSize: 18.0)),
            )
          ]))
    ]));
  }
}
