import 'package:flutter/material.dart';
import 'pertanyaan.dart';
import 'package:covid/PertanyaanDetailPage.dart';
import 'package:url_launcher/url_launcher.dart';
class PertanyaanPage extends StatelessWidget {
  Pertanyaan index;
  String soal;
  String jawaban;
  String gambar;

  PertanyaanPage(this.index,this.soal,this.jawaban,this.gambar);

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
                  shadowColor: Colors.black,
                  child: Container(
                    width: 768.0,
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 10.0),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Container(
                            child: Center(
                                child: Text(soal,
                                    style: TextStyle(
                                        color: Color(0xff07128a),
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold
                                    ),
                                  textAlign: TextAlign.center,
                                )
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text("Yuk Lihat Jawabannya !",
                                    style: TextStyle(
                                        color: Color(0xffff6f00), fontSize: 16.0)),
                                IconButton(
                                    icon: Icon(
                                      Icons.arrow_forward,
                                      color: Color(0xffff6f00),
                                    ),
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PertanyaanDetailPage(index)));
                                    }),
                              ],
                            )),
                        SizedBox(height: 15.0),
                      ],
                    ),
                  )),
            ),
          ]),
    );
  }
}