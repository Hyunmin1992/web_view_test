import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io';

class WebPage extends StatefulWidget {
  @override
  WebPageState createState() => WebPageState();
}

class WebPageState extends State<WebPage> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      print('is Android');
      WebView.platform = AndroidWebView();
    } else {
      WebView.platform = AndroidWebView();
      print('not Andoriod');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Web View Test"),
      ),
      body: WebView(
        initialUrl: 'https://www.google.com/',
      ),
    );
  }
}
