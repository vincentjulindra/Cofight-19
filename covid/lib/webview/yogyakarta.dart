import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Yogyakarta extends StatefulWidget {
  @override
  _YogyakartaState createState() => _YogyakartaState();
}

class _YogyakartaState extends State<Yogyakarta> {
  @override
  Widget build(BuildContext context) {
    return  WebviewScaffold(
      url: "https://google.com",
      withZoom: true,
      appBar: AppBar(
        title: Text('Website Yogyakarta Covid-19',style: TextStyle(fontSize: 25.0,color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
        elevation: 5,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
    );
  }
}