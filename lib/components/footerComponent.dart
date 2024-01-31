//import 'dart:ui';

import 'package:flutter/material.dart';

import 'dart:math' as math;
import 'dart:async';
import 'dart:ui';

import 'package:url_launcher/url_launcher.dart';

import './customMaterialWithHover.dart';

import 'package:flutter_animate/flutter_animate.dart';

//import 'dart:ui' as ui;

class FooterComponent extends StatefulWidget {
  const FooterComponent({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<FooterComponent> createState() => _FooterComponentState();
}

class _FooterComponentState extends State<FooterComponent> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 1.0), // Add padding if needed
        child: Column(
          children: [
            const SizedBox(height: 90.0),
            // Centering the row of images
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Text(
                'thanks for stopping by :)    ',
                textAlign: TextAlign.left, // Centers the text horizontally
                style: TextStyle(
                  fontFamily: 'Edensor',
                  fontSize: 16,
                  color: const Color(0xffFAFAFA).withOpacity(0.6),
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1.5,
                ),
              ),
              SizedBox(
                width: (MediaQuery.of(context).size.width < 855.0)
                    ? (MediaQuery.of(context).size.width * 0.075)
                    : (MediaQuery.of(context).size.width * 0.15),
              ),
            ]),
            Row(
              children: [
                SizedBox(
                  width: (MediaQuery.of(context).size.width < 855.0)
                      ? (MediaQuery.of(context).size.width * 0.075)
                      : (MediaQuery.of(context).size.width * 0.15),
                ),
                Text(
                  "© by evan kim 20xx"
                      .replaceAll("20xx", DateTime.now().year.toString()),
                  textAlign: TextAlign.left, // Centers the text horizontally
                  style: TextStyle(
                    fontFamily: 'Edensor',
                    fontSize: 13,
                    color: const Color(0xffFAFAFA).withOpacity(0.6),
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.5,
                  ),
                ),
                const Spacer(),

                // LinkedIn image
                CustomMaterialWithHover(
                  imageUrl: 'assets/linkedin.png',
                  actionToDoOnTap: () async {
                    final Uri url =
                        Uri.parse('https://www.linkedin.com/in/wujehevankim');
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    }
                  },
                  stringPhrase: '',
                  imageWidth: 43.0,
                ),

                // Bareuloh image
                CustomMaterialWithHover(
                  imageUrl: 'assets/bareulohLogoForEvanKimWebsite.png',
                  actionToDoOnTap: () async {
                    final Uri url =
                        Uri.parse('https://www.bareulohsounds.com/wuzy');
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    }
                  },
                  stringPhrase: '',
                  imageWidth: 43.0,
                ),
                SizedBox(
                  width: (MediaQuery.of(context).size.width < 855.0)
                      ? (MediaQuery.of(context).size.width * 0.075)
                      : (MediaQuery.of(context).size.width * 0.15),
                ),
              ],
            ),
            const SizedBox(height: 30.0), // Space between images and text
            // Centering the text
          ],
        ),
      ),
    );
  }
}
