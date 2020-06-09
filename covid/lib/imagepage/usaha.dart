import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class Usaha extends StatefulWidget {
  @override
  _UsahaState createState() => _UsahaState();
}

class _UsahaState extends State<Usaha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text('Wisata Tutup di Jakarta',style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.bold),),
        elevation: 5,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Hero(
            tag: 'imageHero',
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Wisata Tutup di Jakarta",style: TextStyle(color: Colors.black87,fontSize: 27,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(height: 20.0,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return DetailScreen();
                      }));
                    },
                    child: Image.asset(
                      'assets/usaha.jpg',
                    ),
                  ),
                ],
              ),
            )
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text('Wisata Tutup',style: TextStyle(fontSize: 25.0,color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
        elevation: 5,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: GestureDetector(
        child: Center(
          child: Hero(
              tag: 'imageHero',
              child: PhotoView(
                imageProvider: AssetImage("assets/usaha.jpg"),
              )
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}