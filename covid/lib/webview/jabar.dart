import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Jabar extends StatefulWidget {
  @override
  _JabarState createState() => _JabarState();
}

class _JabarState extends State<Jabar> {
  @override
  Widget build(BuildContext context) {
    return  WebviewScaffold(
      url: "https://pikobar.jabarprov.go.id/",
      withZoom: true,
      appBar: AppBar(
        title: Text('Website Jabar Covid-19',style: TextStyle(fontSize: 25.0,color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
        elevation: 5,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
    );
  }
}