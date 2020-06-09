import 'package:flutter/material.dart';
import 'emergency.dart';
import 'package:url_launcher/url_launcher.dart';
class EmergencyPage extends StatelessWidget {
  Emergency index;
  String number;
  String name;
  String city;

  EmergencyPage(this.index,this.number,this.name,this.city);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Stack(
          children: <Widget>[
            Container(
              child: Material(
                  color: Colors.white,
                  elevation: 14.0,
                  borderRadius: BorderRadius.circular(24.0),
                  shadowColor: Color(0x802196F3),
                  child: Container(
                    width: 768.0,
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 10.0),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Container(
                            child: Center(
                                child: Text(name,
                                    style: TextStyle(
                                        color: Color(0xff07128a),
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                )),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Container(
                          child: Center(
                              child: Text(city,
                                  style: TextStyle(
                                      color: Color(0xff2da9ef),
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold))),
                        ),
                        SizedBox(height: 8.0),
                        Container(
                          child: Center(
                              child: Text(number,
                                  style: TextStyle(
                                      color: Color(0xff2da9ef),
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold))),
                        ),
                        SizedBox(height: 10.0),
                        Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                IconButton(
                                    icon: Icon(
                                      Icons.add_call,
                                      color: Color(0xffff6f00),
                                    ),
                                  onPressed: () => launch("tel:${number.toString()}"),
                                    ),
                              ],
                            )),
                      ],
                    ),
                  )),
            ),
          ]),
    );
  }
}