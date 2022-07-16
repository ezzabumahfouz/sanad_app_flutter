import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NearmeClass extends StatefulWidget {
  const NearmeClass({Key? key}) : super(key: key);

  @override
  State<NearmeClass> createState() => _NearmeClassState();
}

class _NearmeClassState extends State<NearmeClass> {
  @override
  Widget build(BuildContext context) {
    Color color1 = Colors.white;
    TextStyle t1 = TextStyle(color: color1, fontSize: 20.0);
    String _dropdownValue = "عمان";

    List<String> dropDownOptions = [
      "عمان",
      'اربد',
      'البلقاء',
      'العقبة',
      'جرش',
      'عجلون',
      'الكرك',
      'الطفيلة',
      'الزرقاء',
      'مادبا',
      'المفرق',
      'معان'
    ];
    void dropdownCallback(String? selectedValue) {
      if (selectedValue is String) {
        setState(() {
          _dropdownValue = selectedValue;
        });
      }
    }

    String _dropdownValue2 = "محطات سند";

    List<String> dropDownOptions2 = [
      "محطات سند",
    ];
    void dropdownCallback2(String? selectedValue) {
      if (selectedValue is String) {
        setState(() {
          _dropdownValue2 = selectedValue;
        });
      }
    }

    return SafeArea(
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
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Container(
            height: 50.0,
            width: MediaQuery.of(context).size.width / 2 - 10.0,
            decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(color: Colors.grey[600]!, width: 2.0)),
            child: DropdownButton(
                dropdownColor: Colors.grey[800],
                items: dropDownOptions
                    .map<DropdownMenuItem<String>>((String mascot) {
                  return DropdownMenuItem<String>(
                      child: Text(mascot), value: mascot);
                }).toList(),
                value: _dropdownValue,
                onChanged: dropdownCallback,
                // Customizatons
                //iconSize: 42.0,
                //iconEnabledColor: Colors.green,
                icon: Icon(FontAwesomeIcons.angleDown, color: Colors.white),
                isExpanded: true,
                style: t1)),
        Container(
            height: 50.0,
            width: MediaQuery.of(context).size.width / 2 - 10.0,
            decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(color: Colors.grey[600]!, width: 2.0)),
            child: DropdownButton(
                dropdownColor: Colors.grey[800],
                items: dropDownOptions2
                    .map<DropdownMenuItem<String>>((String mascot) {
                  return DropdownMenuItem<String>(
                      child: Text(mascot), value: mascot);
                }).toList(),
                value: _dropdownValue2,
                onChanged: dropdownCallback2,
                // Customizatons
                //iconSize: 42.0,
                //iconEnabledColor: Colors.green,
                icon: Icon(FontAwesomeIcons.angleDown, color: Colors.white),
                isExpanded: true,
                style: t1))
      ]),
      // drop list

      // drop list //
      SizedBox(height: 10.0),
      Container(
          height: 430.0,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/sanad_map.jpeg')))),
      Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          margin: EdgeInsets.all(10.0),
          color: Colors.transparent,
          width: 390.0,
          height: 60.0,
          child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            Text('محطات سند',
                style: TextStyle(color: Colors.grey[500], fontSize: 15.0)),
            Text('مديرية التنمية الاجتماعية / فرع شرق عمان',
                style: TextStyle(color: color1, fontSize: 17.0))
          ])),
      Container(
          width: 350.0,
          height: 60.0,
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(5.0)),
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    FontAwesomeIcons.angleLeft,
                    color: color1,
                  ),
                  Text('احصل على الاتجاه', style: t1)
                ]),
          ))
    ])));
  }
}
