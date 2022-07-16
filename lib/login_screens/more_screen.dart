import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MoreClass extends StatelessWidget {
  const MoreClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        body: SafeArea(
            child: Center(
                child: Column(children: [
          Container(
              height: 40.0,
              width: 130.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('assets/sanad_logo.jpeg')))),
          SizedBox(height: 15.0),
          Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10.0),
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border(
                      bottom: BorderSide(
                          //                    <--- top side
                          color: Colors.grey,
                          width: 1.0))),
              child: Row(children: [
                Icon(
                  FontAwesomeIcons.locationArrow,
                  color: Colors.greenAccent,
                  size: 30.0,
                ),
                SizedBox(width: 15.0),
                Text('Near Me',
                    style: TextStyle(color: Colors.white, fontSize: 20.0))
              ])),
          Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10.0),
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border(
                      bottom: BorderSide(
                          //                    <--- top side
                          color: Colors.grey,
                          width: 1.0))),
              child: Row(children: [
                Icon(
                  FontAwesomeIcons.volumeOff,
                  color: Colors.greenAccent,
                  size: 30.0,
                ),
                SizedBox(width: 15.0),
                Text('Latest News',
                    style: TextStyle(color: Colors.white, fontSize: 20.0))
              ])),
          Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10.0),
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border(
                      bottom: BorderSide(
                          //                    <--- top side
                          color: Colors.grey,
                          width: 1.0))),
              child: Row(children: [
                Icon(
                  FontAwesomeIcons.star,
                  color: Colors.greenAccent,
                  size: 30.0,
                ),
                SizedBox(width: 15.0),
                Text('Guidelines',
                    style: TextStyle(color: Colors.white, fontSize: 20.0))
              ])),
          Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10.0),
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border(
                      bottom: BorderSide(
                          //                    <--- top side
                          color: Colors.grey,
                          width: 1.0))),
              child: Row(children: [
                Icon(
                  FontAwesomeIcons.temperatureFull,
                  color: Colors.greenAccent,
                  size: 30.0,
                ),
                SizedBox(width: 15.0),
                Text('The weather',
                    style: TextStyle(color: Colors.white, fontSize: 20.0))
              ])),
          Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10.0),
              width: 350,
              child: Row(children: [
                Icon(
                  FontAwesomeIcons.circleNotch,
                  color: Colors.greenAccent,
                  size: 30.0,
                ),
                SizedBox(width: 15.0),
                Text('About',
                    style: TextStyle(color: Colors.white, fontSize: 20.0))
              ])),
        ]))));
  }
}
