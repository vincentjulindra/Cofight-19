import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class Rapidtest extends StatefulWidget {
  @override
  _RapidtestState createState() => _RapidtestState();
}

class _RapidtestState extends State<Rapidtest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text('Rapid Test',style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.bold),),
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
                      Text("Informasi Rapid Test",style: TextStyle(color: Colors.black87,fontSize: 27,fontWeight: FontWeight.bold),),
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
                      'assets/rapid1.jpg',
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return DetailScreen2();
                      }));

                    },
                    child: Image.asset(
                      'assets/rapid2.jpg',
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
        title: Text('Rapid Test 1',style: TextStyle(fontSize: 25.0,color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
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
                imageProvider: AssetImage("assets/rapid1.jpg"),
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
        title: Text('Rapid Test 2',style: TextStyle(fontSize: 25.0,color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
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
                imageProvider: AssetImage("assets/rapid2.jpg"),
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