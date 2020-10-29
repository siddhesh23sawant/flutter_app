import 'dart:ui';
import 'package:ask_smart_home/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class Manual_pdf__Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => UserManualPage();
}

class UserManualPage extends State<Manual_pdf__Page> {
  bool _isLoading = false, _isInit = true;
  PDFDocument document;

  loadFromAssets() async {
    setState(() {
      _isInit = false;
      _isLoading = true;
    });
    document = await PDFDocument.fromAsset("asset/files/sample2.pdf");
    setState(() {
      _isLoading = false;
    });
  }

  @override
  // TODO: implement build
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
              child: Center(
            child: _isInit
                ? Text('This page is not ready !\n'
                    '\n'
                    'Maker might be Busy !\n'
                    '\n'
                    'Try again after few Days')
                : _isLoading
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : PDFViewer(
                        document: document,
                      ),
          )),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  height: 50,
                  color: kPrimaryColor,
                  child: Text(
                    'Open PDF for Details',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    loadFromAssets();
                  },
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
