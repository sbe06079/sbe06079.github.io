import 'package:flutter/material.dart';
import '../components/footerComponent.dart';
import 'package:url_launcher/url_launcher.dart';
import '../components/customMaterialWithHover.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../landingPage.dart';

import '../components/aParagraph.dart';

import '../components/aHeader.dart';
import '../components/subtitle.dart';

import '../components/customExpansion.dart';

import 'dart:math' as math;

import 'package:flutter/gestures.dart';

import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/services.dart';

import 'package:go_router/go_router.dart';

import '../components/website_colors.dart';
import '../components/text_size.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({super.key, required this.title});

  final String title;

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  bool isExpandedCodelingo = false;
  bool isExpandedBean = false;
  bool isExpandedBareuloh = false;

  @override
  void initState() {
    super.initState();
    _loadStrings();
    // This line schedules a callback for the end of this frame
    // to calculate the left padding using MediaQuery.
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> _loadStrings() async {
    setState(() {}); // To rebuild widget with updated data.
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        color: const Color(0xFF202123),
        title: "music | evan kim",
        child: Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate([
                  const SizedBox(height: 45.0),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(1.0, 0, 1.0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () async {
                              context.go('/'); // push named route
                            },
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            child: Animate(
                              effects: const [
                                FadeEffect(duration: Duration(seconds: 5)),
                              ],
                              child: Image.asset(
                                'assets/evanBitmoji_cutoff_with_hey.png',
                                height: 85, // Adjust height as needed
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
              SliverFillRemaining(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    //mainAxisAlignment: MainAxisAlignment,
                    children: [
                      const SizedBox(height: 35.0),
                      SizedBox(
                        width: (MediaQuery.of(context).size.width < 855.0)
                            ? (MediaQuery.of(context).size.width * 0.85) + 11
                            : (MediaQuery.of(context).size.width * 0.7) + 11,
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Animate(
                            effects: const [
                              FadeEffect(duration: Duration(seconds: 5)),
                            ],
                            child: Opacity(
                              opacity: 0.8,
                              child:
                                  Image.asset('assets/music.png', height: 60.0),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      const AHeader(
                        headerText: "Music",
                        alignment: TextAlign.left,
                      ),
                      const SizedBox(height: 10.0),
                      SizedBox(
                        width: (MediaQuery.of(context).size.width < 855.0)
                            ? (MediaQuery.of(context).size.width * 0.85)
                            : (MediaQuery.of(context).size.width * 0.7),
                        child: Animate(
                          effects: const [
                            FadeEffect(duration: Duration(seconds: 5)),
                          ],
                          child: Text.rich(
                            TextSpan(
                              style: TextStyle(
                                fontFamily: 'Aptos',
                                fontSize: standardTextSize,
                                color: const Color(0xffFAFAFA).withOpacity(0.8),
                                fontWeight: FontWeight.w100,
                                letterSpacing: 1.3,
                                wordSpacing: 1.1,
                                height: 1.7,
                              ),
                              children: <InlineSpan>[
                                const TextSpan(
                                  text: "(more on ",
                                ),
                                TextSpan(
                                  text: "bareulohsounds.com",
                                  style: const TextStyle(
                                    fontFamily: 'Aptos',
                                    fontSize: standardTextSize,
                                    color: WebsiteColors.hyperlinkPurple,
                                    fontWeight: FontWeight.w100,
                                    letterSpacing: 1.3,
                                    wordSpacing: 1.1,
                                    height: 1.7,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () async {
                                      const urlString =
                                          'https://www.bareulohsounds.com';
                                      final url = Uri.parse(
                                          urlString); // Create a Uri object

                                      if (await canLaunchUrl(url)) {
                                        // Use the Uri object
                                        await launchUrl(url);
                                      } else {
                                        throw 'Could not launch $urlString'; // Use the string version in your message
                                      }
                                    },
                                ),
                                const TextSpan(
                                  text: ", nothing here for now!)",
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      /*const Subtitle(
                      content:
                          "(more on bareulohsounds.com, nothing here for now!)"),
                          */
                      const SizedBox(height: 35.0),
                      const SizedBox(height: 105.0),
                      const FooterComponent(title: "footer"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
