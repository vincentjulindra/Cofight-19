import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Hero(
            tag: 'imageHero',
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  InkWell(
                    child: Image.asset(
                      'assets/matana.png',height: 150,width: 150
                    ),
                  ),
                  Divider(color: Colors.grey),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("App developer",style: TextStyle(color: Colors.grey,fontSize: 17),),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Vincent Julindra Jacob",style: TextStyle(color: Colors.black87,fontSize: 20),),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Divider(color: Colors.grey),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("E-mail",style: TextStyle(color: Colors.grey,fontSize: 17),),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("vincent.julindra@matanauniversity.ac.id",style: TextStyle(color: Colors.black87,fontSize: 20),),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Divider(color: Colors.grey),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Dosen",style: TextStyle(color: Colors.grey,fontSize: 17),),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Ary budi Warsito M.Kom",style: TextStyle(color: Colors.black87,fontSize: 20),),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Divider(color: Colors.grey),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("University",style: TextStyle(color: Colors.grey,fontSize: 17),),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Matana University",style: TextStyle(color: Colors.black87,fontSize: 20),),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Divider(color: Colors.grey),
                  SizedBox(height: 10.0),
                ],
              ),
            )
        ),
      ),
    );
  }
}
