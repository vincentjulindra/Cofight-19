import 'package:flutter/material.dart';
import 'pertanyaan.dart';
import 'PertanyaanPage.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class PertanyaanDashboard extends StatefulWidget{
  PertanyaanDashboard({Key key}) : super(key: key);
  _PertanyaanDashboardState createState() => _PertanyaanDashboardState();
}

class _PertanyaanDashboardState extends State<PertanyaanDashboard> {
  List<Pertanyaan> pertanyaanPage = [];
  Future<List<Pertanyaan>> _pertanyaanPage() async {
    var data = await http.get("http://ulnar-contamination.000webhostapp.com/cofight/datapertanyaan.php");
    var jsonData = json.decode(data.body);

    for (var pertanyaanval in jsonData) {
      Pertanyaan pertanyaan = Pertanyaan(
          pertanyaanval['soal'],
          pertanyaanval['jawaban'],
          pertanyaanval['gambar']);
      pertanyaanPage.add(pertanyaan);
    }
    return pertanyaanPage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            FutureBuilder(
              future: _pertanyaanPage(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.data != null) {
                  return Container(
                    height: MediaQuery.of(context).size.height,
                    color: Color(0xfffF7F7F7),
                    child: ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return PertanyaanPage(
                          snapshot.data[index],
                          snapshot.data[index].soal,
                          snapshot.data[index].jawaban,
                          snapshot.data[index].gambar,
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