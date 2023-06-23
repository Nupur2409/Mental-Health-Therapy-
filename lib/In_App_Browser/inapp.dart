import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:google_fonts/google_fonts.dart';

class InApp extends StatefulWidget {
  const InApp({super.key});

  @override
  State<InApp> createState() => _InAppState();
}

class _InAppState extends State<InApp> {
  double _progress = 0;
  late InAppWebViewController webView;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Search Nearby Doctors", 
          style: TextStyle(color: Colors.white, fontFamily: GoogleFonts.aclonica().fontFamily),
        ),
      ),
      body: Stack(
        children: [
          InAppWebView(
              initialUrlRequest: URLRequest(
                url: Uri.parse("https://www.bing.com/"),
              ),
              onWebViewCreated: (InAppWebViewController controller) {
                webView = controller;
              },
              onProgressChanged:
                  (InAppWebViewController controller, int progress) {
                setState(() {
                  _progress = progress / 100;
                });
              })
              ,
              _progress <1? SizedBox(
                height: 3,
                child: LinearProgressIndicator(value: _progress,
                backgroundColor: Theme.of(context).accentColor.withOpacity(0.2),),
              ): SizedBox()
                      ],
      ),
    );
  }
}
