import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _telephoneurl = Uri.parse('tel:9375412');
final Uri _emailurl = Uri.parse('mailto:sarjendev@gmail.com');
final Uri _siteurl = Uri.parse('https://github.com/sarjendev');

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // backgroundColor: Colo,
        title: const Text(
          "About Us",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                height: 10,
              ),
            ),
            ListTile(
              title: Text(
                  "Simple E-Commerce Mobile app. Powered by Flutter & Firebase"),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                height: 10,
              ),
            ),
            ListTile(
              title: Text(
                "For inquries, please contact us here",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                _launchUrl(_telephoneurl);
              },
              leading: const Icon(Icons.phone),
              title: Text("+960 9375412"),
            ),
            ListTile(
              onTap: () {
                _launchUrl(_emailurl);
              },
              leading: const Icon(Icons.email),
              title: Text("sarjendev@gmail.com"),
            ),
            ListTile(
              onTap: () {
                _launchUrl(_siteurl);
              },
              leading: const Icon(Icons.language),
              title: Text("Website Link"),
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> _launchUrl(_url) async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
