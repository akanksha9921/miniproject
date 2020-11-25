import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(News());
}

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: WebView(
          initialUrl:
          "https://www.flipbookpdf.net/web/site/e10f212c4666905be37a49805557741f698a75f1202011.pdf.html#page/2",
          javascriptMode: JavascriptMode.unrestricted,
        )
    );
  }
}