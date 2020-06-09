import 'package:flutter/material.dart';
import 'emergency.dart';
import 'EmergencyPage.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class EmergencyDashboard extends StatefulWidget{
  EmergencyDashboard({Key key}) : super(key: key);
  _EmergencyDashboardState createState() => _EmergencyDashboardState();
}

class _EmergencyDashboardState extends State<EmergencyDashboard> {
  List<Emergency> emergencyPage = [];
  Future<List<Emergency>> _emergencyPage() async {
    var data = await http.get("http://ulnar-contamination.000webhostapp.com/cofight/data.php");
    var jsonData = json.decode(data.body);

    for (var emergencyval in jsonData) {
      Emergency emergency = Emergency(
          emergencyval['number'],
          emergencyval['name'],
          emergencyval['city']);
      emergencyPage.add(emergency);
    }
    return emergencyPage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            FutureBuilder(
              future: _emergencyPage(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.data != null) {
                  return Container(
                    height: MediaQuery.of(context).size.height,
                    color: Color(0xfffF7F7F7),
                    child: ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return EmergencyPage(
                          snapshot.data[index],
                          snapshot.data[index].number,
                          snapshot.data[index].name,
                          snapshot.data[index].city,
                        );
                      },
                    ),
                  );
                } else {
                  return Container(
                    child: Center(
                      child: Text("Harap Tunggu..."),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}