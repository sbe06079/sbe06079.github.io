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
        padding:
            EdgeInsets.symmetric(horizontal: 16.0), // Add padding if needed
        child: Column(
          children: [
            SizedBox(height: 30.0), // Spacer
            // Centering the row of images
            Row(
              mainAxisAlignment: MainAxisAlignment
                  .center, // Centers the row items horizontally
              children: [
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
                  imageWidth: 45.0,
                ),

                const SizedBox(
                    width: 1.0), // Adjustable spacing between the images
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
                  imageWidth: 45.0,
                ),
              ],
            ),
            SizedBox(height: 20.0), // Space between images and text
            // Centering the text
            Text(
              "© 20xx made with Flutter"
                  .replaceAll("20xx", DateTime.now().year.toString()),
              textAlign: TextAlign.center, // Centers the text horizontally
              style: TextStyle(
                fontFamily: 'AppleSD',
                fontSize: 13,
                color: const Color(0xffFAFAFA).withOpacity(0.5),
                fontWeight: FontWeight.normal,
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(height: 10.0), // Spacer
          ],
        ),
      ),
    );
  }
}
