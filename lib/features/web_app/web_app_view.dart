import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewApp extends StatefulWidget {
  const WebViewApp({super.key});

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse(
            'https://www.marinetraffic.com/ar/ais/home/centerx:32.3/centery:31.5/zoom:10'),
      );
  }

  InAppWebViewController? webView;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('تتبع'),
        ),
        body: InAppWebView(
          initialUrlRequest: URLRequest(
              url: WebUri(
                  "https://www.marinetraffic.com/ar/ais/home/centerx:32.3/centery:31.5/zoom:10")),
          onWebViewCreated: (InAppWebViewController controller) {
            webView = controller;
          },
        )
        // WebViewWidget(
        //   controller: controller,
        // ),
        );
  }
}
