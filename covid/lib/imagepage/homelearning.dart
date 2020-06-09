import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class Homelearning extends StatefulWidget {
  @override
  _HomelearningState createState() => _HomelearningState();
}

class _HomelearningState extends State<Homelearning> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text('Himbauan Bekerja/Belajar di Rumah',style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.bold),),
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
                      Text("Himbauan Bekerja di Rumah",style: TextStyle(color: Colors.black87,fontSize: 27,fontWeight: FontWeight.bold),),
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
                      'assets/homelearning1.jpeg',
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return DetailScreen2();
                      }));

                    },
                    child: Image.asset(
                      'assets/homelearning2.jpeg',
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return DetailScreen3();
                      }));

                    },
                    child: Image.asset(
                      'assets/homelearning3.jpeg',
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
        title: Text('Home Learning 1',style: TextStyle(fontSize: 25.0,color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
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
                imageProvider: AssetImage("assets/homelearning1.jpeg"),
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


class DetailScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text('Home Learning 2',style: TextStyle(fontSize: 25.0,color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
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
                imageProvider: AssetImage("assets/homelearning2.jpeg"),
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

class DetailScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text('Homelearning3',style: TextStyle(fontSize: 25.0,color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
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
                imageProvider: AssetImage("assets/homelearning3.jpeg"),
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