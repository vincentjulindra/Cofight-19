import 'package:covid/EmergencyDashboard.dart';
import 'package:flutter/material.dart';
import 'EmergencyDashboard.dart';
import 'PertanyaanDashboard.dart';
import 'webview/nasional.dart';
import 'webview/jakarta.dart';
import 'webview/banten.dart';
import 'webview/jabar.dart';
import 'webview/jateng.dart';
import 'webview/yogyakarta.dart';
import 'package:covid/imagepage/rapidtest.dart';
import 'package:covid/imagepage/homelearning.dart';
import 'package:covid/imagepage/usaha.dart';
import 'package:covid/about.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    final _widgetOptions = [
      storeTab(context),
      PertanyaanDashboard(),
      EmergencyDashboard(),
      About(),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Image.asset("assets/virus.png",height: 50,width: 50),
            SizedBox(width: 10,),
            const Text('CoFight-19')
          ],
        ),
      ),
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.device_unknown),
            title: Text('Pertanyaan'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_call),
            title: Text('Emergency!'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline),
            title: Text('About'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.indigo,
        unselectedItemColor: Colors.lightBlueAccent,
        onTap: _onItemTapped,
      ),
    );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

Widget storeTab(BuildContext context) {

  return ListView(children: <Widget>[
    headerTopCategories(context),
  ]);
}

Widget headerTopCategories(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      sectionHeader('Cek Website Pemerintah mengenai Covid-19\n' , onViewMore: () {}),
      SizedBox(
        height: 130,
        child: ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: <Widget>[
            headerCategoryItem('Nasional', Icons.account_balance, onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>Nasional()));
            }  ),
            headerCategoryItem('Jakarta', Icons.ac_unit, onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Jakarta()));
            }  ),
            headerCategoryItem('Banten', Icons.add_to_queue, onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Banten()));
            }  ),
            headerCategoryItem('Jawa Barat', Icons.web, onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Jabar()));
            }  ),
            headerCategoryItem('Jawa Tengah', Icons.domain, onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Jateng()));
            }  ),
            headerCategoryItem('Yogyakarta', Icons.computer, onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Yogyakarta()));
            }  ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/rapidtest.jpg"),
                fit: BoxFit.fitWidth,
                colorFilter: new ColorFilter.mode(Colors.white.withOpacity(0.6), BlendMode.dstOut),
              ),
            ),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> Rapidtest()));
              },
              child: Card(
                color: Colors.transparent,
                elevation: 4,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(height: 30.0,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const ListTile(
                        title: Text('Info Rapid Test',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 30.0), ),
                        subtitle: Divider(color: Colors.pink,),
                      ),
                    ),
                    ButtonBar(
                      children: <Widget>[
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/home-learning.png"),
                fit: BoxFit.fitWidth,
                colorFilter: new ColorFilter.mode(Colors.white.withOpacity(0.6), BlendMode.dstOut),
              ),
            ),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> Homelearning()));
              },
              child: Card(
                color: Colors.transparent,
                elevation: 4,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(height: 30.0,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const ListTile(
                        title: Text('Tips Home Learning',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 30.0), ),
                        subtitle: Divider(color: Colors.pink,),
                      ),
                    ),
                    ButtonBar(
                      children: <Widget>[
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/usaha1.jpg"),
                fit: BoxFit.fitWidth,
                colorFilter: new ColorFilter.mode(Colors.white.withOpacity(0.6), BlendMode.dstOut),
              ),
            ),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> Usaha()));
              },
              child: Card(
                color: Colors.transparent,
                elevation: 4,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(height: 30.0,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const ListTile(
                        title: Text('Wisata Tutup',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 30.0), ),
                        subtitle: Divider(color: Colors.pink,),
                      ),
                    ),
                    ButtonBar(
                      children: <Widget>[
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
Widget sectionHeader(String headerTitle, {onViewMore}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        margin: EdgeInsets.only(left: 15, top: 10),
        child: Text(headerTitle),
      ),
    ],
  );
}

Widget headerCategoryItem(String name, IconData icon, {onPressed}) {
  return Container(
    margin: EdgeInsets.only(left: 15),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(bottom: 10),
            width: 86,
            height: 86,
            child: FloatingActionButton(
              shape: CircleBorder(),
              heroTag: name,
              onPressed: onPressed,
              backgroundColor: Colors.white,
              child: Icon(icon, size: 35, color: Colors.black87),
            )),
        Text(name + ' › ')
      ],
    ),
  );
}