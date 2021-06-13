import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';
class ClientSite extends StatefulWidget {
  @override
  _ClientSiteState createState() => _ClientSiteState();
}

class _ClientSiteState extends State<ClientSite> {

  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: WebView(
        initialUrl: 'https://q8aqar.com/app/1/',
        javascriptMode: JavascriptMode.unrestricted,
        navigationDelegate: (NavigationRequest request) {
          if (request.url.contains("whatsapp:")) {
            _launchURL(request.url);
            return NavigationDecision.prevent;
          } else if (request.url.contains("phone:")) {
            _launchURL(request.url);
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    );
  }
}
