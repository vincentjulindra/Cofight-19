import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Banten extends StatefulWidget {
  @override
  _BantenState createState() => _BantenState();
}

class _BantenState extends State<Banten> {
  @override
  Widget build(BuildContext context) {
    return  WebviewScaffold(
      url: "https://infocorona.bantenprov.go.id/",
      withZoom: true,
      appBar: AppBar(
        title: Text('Website Banten Covid-19',style: TextStyle(fontSize: 25.0,color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
        elevation: 5,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
    );
  }
}