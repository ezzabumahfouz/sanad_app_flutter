import 'package:flutter/material.dart';

class GuidelinesClass extends StatelessWidget {
  const GuidelinesClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      Padding(
          padding: const EdgeInsets.all(25.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text('Guidelines',
                style: TextStyle(fontSize: 22.0, color: Colors.white)),
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey[600]),
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 10.0),
                    child: Text('SEE ALL',
                        style: TextStyle(color: Colors.white, fontSize: 15.0))))
          ])),
      Container(
        height: 190,
        width: 340,
        decoration: BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage('assets/sanad_Guidelines.jpeg'))),
      )
    ])));
  }
}
