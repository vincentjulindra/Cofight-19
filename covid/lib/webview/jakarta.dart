import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Jakarta extends StatefulWidget {
  @override
  _JakartaState createState() => _JakartaState();
}

class _JakartaState extends State<Jakarta> {
  @override
  Widget build(BuildContext context) {
    return  WebviewScaffold(
      url: "https://corona.jakarta.go.id",
      withZoom: true,
      appBar: AppBar(
        title: Text('Website Jakarta Covid-19',style: TextStyle(fontSize: 25.0,color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
        elevation: 5,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
    );
  }
}