import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingClass extends StatefulWidget {
  SettingClass({Key? key}) : super(key: key);

  @override
  State<SettingClass> createState() => _SettingClassState();
}

class _SettingClassState extends State<SettingClass> {
  @override
  Widget build(BuildContext context) {
    Color C1 = Colors.greenAccent;
    Icon icon1 =
        Icon(FontAwesomeIcons.toggleOn, color: Colors.greenAccent, size: 40.0);
    TextStyle S1 = TextStyle(color: Colors.white);
    String _dropdownValue = "English";
    List<String> dropDownOptions = ["English", "العربية"];

    void dropdownCallback(String? selectedValue) {
      if (selectedValue is String) {
        setState(() {
          _dropdownValue = selectedValue;
        });
      }
    }

    return Scaffold(
        backgroundColor: Colors.grey[900],
        body: ListView(children: [
          Container(
              height: 40.0,
              width: 130.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('assets/sanad_logo.jpeg')))),
          ListTile(
            leading: Icon(FontAwesomeIcons.user, color: C1),
            title: Text('Account information', style: S1),
            style: ListTileStyle.drawer,
          ),
          ListTile(
              leading: Icon(FontAwesomeIcons.idCard, color: C1),
              title: Text('Change password', style: S1)),
          ListTile(
              leading: Icon(FontAwesomeIcons.idCard, color: C1),
              title: Text('Change Digital identify Pin Code', style: S1)),
          ListTile(
              leading: Icon(FontAwesomeIcons.idCard, color: C1),
              title: Text('Reset Digital Identify Pin Code', style: S1)),
          ListTile(
              leading: Icon(FontAwesomeIcons.language, color: C1),
              title: Text('Change Language', style: S1),
              trailing: DropdownButton(
                  items: dropDownOptions
                      .map<DropdownMenuItem<String>>((String mascot) {
                    return DropdownMenuItem<String>(
                        child: Text(mascot), value: mascot);
                  }).toList(),
                  value: _dropdownValue,
                  onChanged: dropdownCallback,
                  borderRadius: BorderRadius.circular(20.0),
                  iconSize: 25.0,
                  dropdownColor: Colors.grey[900],
                  icon: const Icon(FontAwesomeIcons.angleDown),
                  style: TextStyle(color: Colors.white))),
          ListTile(
              leading: Icon(FontAwesomeIcons.lightbulb, color: C1),
              title: Text('Dark mode', style: S1),
              trailing: icon1),
          ListTile(
              leading: Icon(FontAwesomeIcons.bell, color: C1),
              title: Text('Notification', style: S1),
              trailing: icon1),
          ListTile(
              leading: Icon(FontAwesomeIcons.locationPin, color: C1),
              title: Text('Location', style: S1),
              trailing: icon1),
          ListTile(
              leading: Icon(FontAwesomeIcons.childReaching, color: C1),
              title: Text('Accessibility', style: S1)),
          ListTile(
              leading: Icon(FontAwesomeIcons.shareNodes, color: C1),
              title: Text('Share Sanad Application', style: S1)),
          ListTile(
              leading: Icon(FontAwesomeIcons.lock, color: C1),
              title: Text('Privacy Policy', style: S1)),
          SizedBox(height: 30.0),
          TextButton.icon(
              style: ButtonStyle(alignment: Alignment.centerLeft),
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              icon: Icon(
                FontAwesomeIcons.rightFromBracket,
                size: 20.0,
                color: Colors.white,
              ),
              label: Text('Logout', style: TextStyle(color: Colors.white))),
          SizedBox(height: 20.0)
        ]));
  }
}
