import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Nasional extends StatefulWidget {
  @override
  _NasionalState createState() => _NasionalState();
}

class _NasionalState extends State<Nasional> {
  @override
  Widget build(BuildContext context) {
    return  WebviewScaffold(
      url: "https://www.covid19.go.id",
      withZoom: true,
      appBar: AppBar(
        title: Text('Website Nasional Covid-19',style: TextStyle(fontSize: 25.0,color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
        elevation: 5,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
    );
  }
}