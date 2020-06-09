import 'package:flutter/material.dart';
import 'pertanyaan.dart';

class PertanyaanDetailPage extends StatelessWidget {
  final Pertanyaan pertanyaan;
  const PertanyaanDetailPage(this.pertanyaan);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(pertanyaan.soal),
      ),
      body: SingleChildScrollView(
        child : Column(
          children: <Widget>[
            Container(
                width: 300.0,
                height: 300.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            pertanyaan.gambar)
                    )
                )
            ),
            SizedBox(height: 10.0),
            Padding(
                padding: EdgeInsets.only(left: 8.0,right:8.0),
                child:Text(pertanyaan.soal,style: TextStyle(color: Color(0xff07128a),
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold))),
            SizedBox(height: 10.0),
            Padding(
                padding: EdgeInsets.only(left: 8.0,right:8.0),
                child:Text(pertanyaan.jawaban,style: TextStyle(fontSize: 16.0),)),
          ],),

      ),
    );
  }
}
