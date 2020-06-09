import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Jateng extends StatefulWidget {
  @override
  _JatengState createState() => _JatengState();
}

class _JatengState extends State<Jateng> {
  @override
  Widget build(BuildContext context) {
    return  WebviewScaffold(
      url: "https://www.corona.jatengprov.go.id",
      withZoom: true,
      appBar: AppBar(
        title: Text('Website Jateng Covid-19',style: TextStyle(fontSize: 25.0,color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
        elevation: 5,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
    );
  }
}