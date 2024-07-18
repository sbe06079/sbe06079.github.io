//import 'dart:ui';

import 'package:flutter/material.dart';

import 'dart:math' as math;
import 'dart:async';
import 'dart:ui';

import 'package:url_launcher/url_launcher.dart';

import './customMaterialWithHover.dart';

import 'package:flutter_animate/flutter_animate.dart';

import 'website_colors.dart';

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
      child: Animate(
        effects: const [
          FadeEffect(duration: Duration(seconds: 13)),
        ],
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 1.0), // Add padding if needed
          child: Column(
            children: [
              const SizedBox(height: 90.0),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                //const Spacer(),
                Text(
                  'thanks for stopping by :)',
                  textAlign: TextAlign.center, // Centers the text horizontally
                  style: TextStyle(
                    fontFamily: 'Edensor',
                    fontSize: 15,
                    //color: const Color(0xffFAFAFA).withOpacity(0.6),
                    color: WebsiteColors.websiteBlackText,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.5,
                  ),
                ),
                /*
                const SizedBox(width: 22.0),
                SizedBox(
                  width: (MediaQuery.of(context).size.width < 855.0)
                      ? (MediaQuery.of(context).size.width * 0.075)
                      : (MediaQuery.of(context).size.width * 0.15),
                ),
                */
                /*
              SizedBox(
                width: (MediaQuery.of(context).size.width < 855.0)
                    ? (MediaQuery.of(context).size.width * 0.075)
                    : (MediaQuery.of(context).size.width * 0.15),
              ),
              */
              ]),
              const SizedBox(height: 13.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                        right:
                            35), // Add padding to effectively reduce the width
                    child: SizedBox(
                      width: (MediaQuery.of(context).size.width < 855.0)
                          ? (MediaQuery.of(context).size.width * 0.85)
                          : (MediaQuery.of(context).size.width * 0.7),
                      child: Animate(
                        effects: const [
                          FadeEffect(duration: Duration(seconds: 5)),
                        ],
                        child: Divider(
                          //color: const Color(0xffFAFAFA).withOpacity(
                          //    0.2), // This color is 0xffFAFAFA with 60% opacity
                          color:
                              WebsiteColors.websiteBlackText.withOpacity(0.3),
                          height: .5,
                          endIndent:
                              2.0, // You can adjust the endIndent as needed
                          // Add other properties as needed, like thickness, indent, etc.
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 6.0),
              // Centering the row of images

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: (MediaQuery.of(context).size.width < 855.0)
                        ? (MediaQuery.of(context).size.width * 0.075) - 15
                        : (MediaQuery.of(context).size.width * 0.15) - 15,
                  ),
                  Text(
                    "© by evan kim 20xx"
                        .replaceAll("20xx", DateTime.now().year.toString()),
                    textAlign: TextAlign.left, // Centers the text horizontally
                    style: TextStyle(
                      fontFamily: 'Edensor',
                      fontSize: 13,
                      //color: const Color(0xffFAFAFA).withOpacity(0.6),
                      color: WebsiteColors.websiteBlackText,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.5,
                    ),
                  ),
                  const Spacer(),

                  // LinkedIn image
                  CustomMaterialWithHover(
                    imageUrl: 'assets/linkedin_white_version.png',
                    actionToDoOnTap: () async {
                      final Uri url =
                          Uri.parse('https://www.linkedin.com/in/wujehevankim');
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                      }
                    },
                    stringPhrase: '',
                    imageWidth: 20.0,
                  ),

                  // Bareuloh image
                  /*
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
                */
                  SizedBox(
                    width: (MediaQuery.of(context).size.width < 855.0)
                        ? (MediaQuery.of(context).size.width * 0.075) + 15
                        : (MediaQuery.of(context).size.width * 0.15) + 15,
                  ),
                ],
              ),
              const SizedBox(height: 10.0), // Space between images and text
              // Centering the text
            ],
          ),
        ),
      ),
    );
  }
}
