import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NameWithEmail extends StatefulWidget {
  const NameWithEmail({super.key});

  @override
  State<NameWithEmail> createState() => _NameWithEmailState();
}

class _NameWithEmailState extends State<NameWithEmail> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
          child: Text(
            "Shahed Noor",
            style: TextStyle(fontSize: 30),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
          child: Text(
            "@developernoor",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
          child: Text(
            "shahednoor32@gmail.com",
            style: TextStyle(fontSize: 14),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                launchUrl(
                  Uri.parse('mailto:shahednoor32@gmail.com'),
                );
              },
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.email_outlined)),
            ),
            InkWell(
              onTap: () {
                launchUrl(
                  Uri.parse('https://t.me/shahednoor1'),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.telegram),
              ),
            ),

            InkWell(
              onTap: () {
                launchUrl(
                  Uri.parse('https://www.facebook.com/shahednoor.official'),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.facebook),
              ),
            ),
          ],
        )
      ],
    );
  }
}
