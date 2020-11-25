import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(Magazine());
}

class Magazine extends StatefulWidget {
  @override
  _MagazineState createState() => _MagazineState();
}

class _MagazineState extends State<Magazine> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: WebView(
          initialUrl:
          "https://www.flipbookpdf.net/web/site/91f8f4dd9e13c3d1a0f0ab3a0e67e229b215a770202011.pdf.html#page/6",
          javascriptMode: JavascriptMode.unrestricted,
        )
    );
  }
}