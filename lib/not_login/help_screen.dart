import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HelpClass extends StatelessWidget {
  HelpClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle style1 = TextStyle(fontSize: 22.0, color: Colors.white);
    TextStyle style2 = TextStyle(color: Colors.white, fontSize: 15.0);
    Color _color1 = Colors.white;

    return SafeArea(
        child: Center(
            child: Column(children: [
      Container(
        height: 40.0,
        width: 130.0,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage('assets/sanad_logo.jpeg'))),
      ),
      SizedBox(height: 20.0),
      Container(
          width: 350.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0), color: Colors.black),
          child: Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 13.0, 0, 13.0),
              child: Row(children: [
                Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  size: 18.0,
                  color: Colors.grey,
                ),
                SizedBox(width: 18.0),
                Text(
                  'How can we help?',
                  style: TextStyle(color: Colors.grey),
                )
              ]))),
      Expanded(
        child: Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.only(top: 15.0),
            width: 350.0,
            color: Colors.transparent,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text('FAQs', style: style1),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.grey[600]),
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 10.0),
                        child: Text('SEE ALL',
                            style: TextStyle(
                                color: Colors.white, fontSize: 15.0))))
              ]),
              SizedBox(height: 35.0),
              Row(children: [
                Icon(FontAwesomeIcons.circleInfo, color: _color1, size: 10.0),
                SizedBox(width: 20.0),
                Text('What is Sanad app?', style: style2)
              ]),
              SizedBox(height: 25.0),
              Row(children: [
                Icon(FontAwesomeIcons.circleInfo, color: _color1, size: 10.0),
                SizedBox(width: 20.0),
                Text('Who Can user Sanad app?', style: style2)
              ]),
              SizedBox(height: 25.0),
              Row(children: [
                Icon(FontAwesomeIcons.circleInfo, color: _color1, size: 10.0),
                SizedBox(width: 20.0),
                Text('What is Digital Identify?', style: style2)
              ])
            ])),
      ),
      SizedBox(height: 10.0),
      Container(
          height: 90.0,
          width: 370.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0), color: Colors.red[700]),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Icon(
              FontAwesomeIcons.fireExtinguisher,
              color: _color1,
            ),
            Text('Emergency Numbers',
                style: TextStyle(fontSize: 23.0, color: _color1)),
            Icon(FontAwesomeIcons.angleRight, color: _color1)
          ])),
      SizedBox(height: 15.0),
      Container(
        width: 390.0,
        height: 80,
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              FontAwesomeIcons.phone,
              color: _color1,
            ),
            Icon(
              FontAwesomeIcons.whatsapp,
              color: Colors.green,
            ),
            Icon(
              FontAwesomeIcons.facebook,
              color: Colors.blue,
            ),
            Icon(
              FontAwesomeIcons.youtube,
              color: Colors.red,
            ),
            Icon(
              FontAwesomeIcons.twitter,
              color: Colors.blueAccent,
            )
          ],
        ),
      )
    ])));
  }
}
