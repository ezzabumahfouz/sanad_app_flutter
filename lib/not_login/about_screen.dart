import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutClass extends StatelessWidget {
  AboutClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
            child: Column(children: [
      SizedBox(height: 70.0),
      Container(
          height: 40.0,
          width: 130.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage('assets/sanad_logo.jpeg')))),
      SizedBox(height: 30.0),
      Text('ABOUT SANAD',
          style: TextStyle(fontSize: 21.0, color: Colors.white)),
      SizedBox(height: 20.0),
      Container(
          padding: EdgeInsets.all(15.0),
          width: 350.0,
          child: Text(
            'Sanad is Your gateway to digital goverment service, as it allows you to login with a single username and password instead of multiple password \n Activating Your gigital identify in one of Sanad station will allow you to access Your goverment digital documents, apply for goverment and private services, acces your personal records, digitally sign documents and make bill payments.',
            style: TextStyle(fontSize: 18.0, color: Colors.white),
          )),
      Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          width: 350.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0), color: Colors.black),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('Contact information', style: TextStyle(color: Colors.grey)),
            SizedBox(height: 13.0),
            Row(children: [
              Text('Website:    ',
                  style: TextStyle(fontSize: 21.0, color: Colors.white)),
              Text('www.sanad.jo',
                  style: TextStyle(
                      fontSize: 21.0,
                      color: Colors.green,
                      decoration: TextDecoration.underline))
            ]),
            Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 20.0, 0, 20.0),
                child: Row(children: [
                  Text('NCC:    ',
                      style: TextStyle(fontSize: 21.0, color: Colors.white)),
                  Text('065008080',
                      style: TextStyle(
                          fontSize: 21.0,
                          color: Colors.grey,
                          decoration: TextDecoration.underline))
                ]))
          ]))
    ])));
  }
}
