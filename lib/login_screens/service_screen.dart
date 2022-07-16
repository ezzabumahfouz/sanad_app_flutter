import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ServiceClass extends StatefulWidget {
  const ServiceClass({Key? key}) : super(key: key);

  @override
  State<ServiceClass> createState() => _ServiceClassState();
}

class _ServiceClassState extends State<ServiceClass> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.grey[900],
                centerTitle: true,
                title: Image.asset(
                  'assets/sanad_logo.jpeg',
                  fit: BoxFit.cover,
                  width: 60,
                  height: 30,
                ),
                bottom: TabBar(
                  indicatorColor: Colors.green,
                  tabs: [Tab(text: 'Categorise'), Tab(text: 'Entities')],
                )),
            body: TabBarView(children: [Categories(), Entities()])));
  }
}

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.only(left: 5.0, top: 20.0),
        child: Wrap(
          runSpacing: 10.0,
          spacing: 10.0,
          children: [
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
                      Icon(FontAwesomeIcons.boxArchive,
                          color: Colors.grey, size: 50.0),
                      TextButton(
                          onPressed: null,
                          child: Text('Jordan Customs',
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
                      Icon(FontAwesomeIcons.car,
                          color: Colors.grey, size: 50.0),
                      TextButton(
                          onPressed: null,
                          child: Text('Car',
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
                      Icon(FontAwesomeIcons.comments,
                          color: Colors.grey, size: 50.0),
                      TextButton(
                          onPressed: null,
                          child: Text('Contact Us',
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
                      Icon(FontAwesomeIcons.businessTime,
                          color: Colors.grey, size: 50.0),
                      TextButton(
                          onPressed: null,
                          child: Text('Businesses',
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
                      Icon(FontAwesomeIcons.personMilitaryPointing,
                          color: Colors.grey, size: 50.0),
                      TextButton(
                          onPressed: null,
                          child: Text('Security',
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
                      Icon(FontAwesomeIcons.building,
                          color: Colors.grey, size: 50.0),
                      TextButton(
                          onPressed: null,
                          child: Text('Properites',
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
                      Icon(FontAwesomeIcons.graduationCap,
                          color: Colors.grey, size: 50.0),
                      TextButton(
                          onPressed: null,
                          child: Text('Education',
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
                      Icon(FontAwesomeIcons.personWalkingLuggage,
                          color: Colors.grey, size: 50.0),
                      TextButton(
                          onPressed: null,
                          child: Text('Travel',
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
                      Icon(FontAwesomeIcons.plus,
                          color: Colors.grey, size: 50.0),
                      TextButton(
                          onPressed: null,
                          child: Text('Other Services',
                              style: TextStyle(color: Colors.white)))
                    ]))
          ],
        ),
      ),
    );
  }
}

//boxArchive
//car
//comments
//businessTime
//personMilitaryPointing
//building
//graduationCap
//personWalkingLuggage
//plus
class Entities extends StatelessWidget {
  const Entities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.only(left: 5.0, top: 20.0),
        child: Wrap(
          runSpacing: 10.0,
          spacing: 10.0,
          children: [
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
                      Image.asset(
                        'assets/sanad_tag.webp',
                        width: 44,
                        height: 44,
                        fit: BoxFit.cover,
                      ),
                      TextButton(
                          onPressed: null,
                          child: Text('Jordan Customs',
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
                      CircleAvatar(
                          backgroundImage: AssetImage('assets/sanad_land.png'),
                          radius: 22.0),
                      TextButton(
                          onPressed: null,
                          child: Text('Department of \nLand and... ',
                              textAlign: TextAlign.center,
                              //assetssanad_land.png
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
                      Image.asset(
                        'assets/sanad_tag.webp',
                        width: 44,
                        height: 44,
                        fit: BoxFit.cover,
                      ),
                      TextButton(
                          onPressed: null,
                          child: Text('Ministy of Justice',
                              textAlign: TextAlign.center,
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
                      CircleAvatar(
                        radius: 22.0,
                        backgroundImage:
                            AssetImage('assets/sanad_be5dmetkom.jpg'),
                      ),
                      TextButton(
                          onPressed: null,
                          child: Text('COMبخدمتـ',
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
                      Image.asset(
                        'assets/sanad_tag.webp',
                        width: 44,
                        height: 44,
                        fit: BoxFit.cover,
                      ),
                      TextButton(
                          onPressed: null,
                          child: Text('Ministry of \nIndustry Trade ...',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 13.0)))
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
                      Image.asset(
                        'assets/sanad_amman.jpg',
                        width: 44,
                        height: 44,
                        fit: BoxFit.cover,
                      ),
                      TextButton(
                          onPressed: null,
                          child: Text('Greater Amman Municipality',
                              textAlign: TextAlign.center,
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
                      Image.asset(
                        'assets/sanad_falcon.jpg',
                        width: 44,
                        height: 44,
                        fit: BoxFit.cover,
                      ),
                      TextButton(
                          onPressed: null,
                          child: Text('Public security Directorate',
                              textAlign: TextAlign.center,
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
                      Image.asset(
                        'assets/sanad_tag.webp',
                        width: 44,
                        height: 44,
                        fit: BoxFit.cover,
                      ),
                      TextButton(
                          onPressed: null,
                          child: Text('Civil Service Bureau',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white)))
                    ])),
          ],
        ),
      ),
    );
  }
}
