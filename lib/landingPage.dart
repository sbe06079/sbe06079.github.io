import 'package:flutter/material.dart';
import 'package:web/subPages/thoughts.dart';
import 'components/footerComponent.dart';
import 'package:url_launcher/url_launcher.dart';
import 'components/customMaterialWithHover.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'components/aParagraph.dart';
import 'components/subtitle.dart';

import 'components/aHeader.dart';

import 'subPages/career.dart';

import 'subPages/thoughts.dart';

import 'subPages/projects.dart';
import 'subPages/music.dart';

import 'dart:math' as math;

import 'package:go_router/go_router.dart';

import 'package:flutter/gestures.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key, required this.title});

  final String title;

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
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
    return Title(
        color: const Color(0xFF202123),
        title: "home | evan kim",
        child: Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate([
                  const SizedBox(height: 35.0),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(1.0, 0, 1.0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: (MediaQuery.of(context).size.width < 855.0)
                                ? (MediaQuery.of(context).size.width * 0.075)
                                : (MediaQuery.of(context).size.width * .15)),
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () async {
                              context.push('/'); // push named route
                            },
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            child: Animate(
                              effects: const [
                                FadeEffect(duration: Duration(seconds: 5)),
                              ],
                              child: Text(
                                "evan kim",
                                style: TextStyle(
                                  fontFamily: 'Edensor',
                                  fontSize: 27,
                                  color:
                                      const Color(0xffFAFAFA).withOpacity(0.9),
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 2,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        Animate(
                          effects: const [
                            FadeEffect(duration: Duration(seconds: 5)),
                          ],
                          child: CustomMaterialWithHover(
                            imageUrl: 'assets/career.png',
                            actionToDoOnTap: () async {
                              context.go("/career");
                            },
                            stringPhrase: '',
                            imageWidth: 28.0,
                          ),
                        ),
                        const SizedBox(width: 11.0),
                        Animate(
                          effects: const [
                            FadeEffect(duration: Duration(seconds: 7)),
                          ],
                          child: CustomMaterialWithHover(
                            imageUrl: 'assets/coding.png',
                            actionToDoOnTap: () async {
                              context.go("/projects");
                            },
                            stringPhrase: '',
                            imageWidth: 28.0,
                          ),
                        ),
                        //const SizedBox(width: 23.0),
                        SizedBox(
                            width: (MediaQuery.of(context).size.width < 855.0)
                                ? (MediaQuery.of(context).size.width * 0.075)
                                : (MediaQuery.of(context).size.width * .15)),
                      ],
                    ),
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    const Spacer(),
                    Animate(
                      effects: const [
                        FadeEffect(duration: Duration(seconds: 9)),
                      ],
                      child: CustomMaterialWithHover(
                        imageUrl: 'assets/music.png',
                        actionToDoOnTap: () async {
                          context.go("/music");
                        },
                        stringPhrase: '',
                        imageWidth: 28.0,
                      ),
                    ),
                    const SizedBox(width: 11.0),
                    Animate(
                      effects: const [
                        FadeEffect(duration: Duration(seconds: 11)),
                      ],
                      child: CustomMaterialWithHover(
                        imageUrl: 'assets/thoughts.png',
                        actionToDoOnTap: () async {
                          context.go("/thoughts");
                        },
                        stringPhrase: '',
                        imageWidth: 28.0,
                      ),
                    ),
                    SizedBox(
                        width: (MediaQuery.of(context).size.width < 855.0)
                            ? (MediaQuery.of(context).size.width * 0.075)
                            : (MediaQuery.of(context).size.width * .15)),
                  ]),
                ]),
              ),
              SliverFillRemaining(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    //mainAxisAlignment: MainAxisAlignment,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                          math.min(
                            MediaQuery.of(context).size.height *
                                0.4, // Adjust this as needed
                            194.0, // Minimum size
                          ),
                        ),
                        child: Animate(
                          effects: const [
                            FadeEffect(duration: Duration(seconds: 9)),
                          ],
                          child: Image.asset(
                            'assets/evanBitmoji.png',
                            height: math.max(
                                MediaQuery.of(context).size.height * 0.3,
                                194.0),
                          ),
                        ),
                      ),
                      const SizedBox(height: 45.0),
                      const AHeader(headerText: "hello! i'm evan."),
                      const SizedBox(height: 45.0),
                      const AParagraph(
                          content:
                              "►  i'm a senior at duke studying statistics, computer science, and economics."),
                      const AParagraph(
                          content:
                              "►  i was born in korea, first came to the states when i was six, moved a lot between the two countries. (overall, spent roughly half-half at this point)"),
                      const SizedBox(height: 35.0),
                      const AParagraph(
                          content:
                              "►  one day, i was bored at a hackathon and found out that this domain was very cheap - so, i thought 'why not buy it!'"),
                      const AParagraph(
                          content:
                              "►  this website will purely be my journal, where i casually document things i learn as i love to constantly learn and grow."),
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
                                fontSize: 16,
                                color: const Color(0xffFAFAFA).withOpacity(0.8),
                                fontWeight: FontWeight.w100,
                                letterSpacing: 1.3,
                                wordSpacing: 1.1,
                                height: 1.7,
                              ),
                              children: <InlineSpan>[
                                const TextSpan(
                                  text: "►  the four sections will be: ",
                                ),
                                TextSpan(
                                  text: "career, ",
                                  style: TextStyle(
                                    fontFamily: 'Aptos',
                                    fontSize: 16,
                                    color: const Color(0xffF59D3B)
                                        .withOpacity(0.8),
                                    fontWeight: FontWeight.w100,
                                    letterSpacing: 1.3,
                                    wordSpacing: 1.1,
                                    height: 1.7,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () async {
                                      const urlString =
                                          'https://www.evan.kim/career';
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
                                TextSpan(
                                  text: "projects, ",
                                  style: TextStyle(
                                    fontFamily: 'Aptos',
                                    fontSize: 16,
                                    color: const Color(0xffF59D3B)
                                        .withOpacity(0.8),
                                    fontWeight: FontWeight.w100,
                                    letterSpacing: 1.3,
                                    wordSpacing: 1.1,
                                    height: 1.7,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () async {
                                      const urlString =
                                          'https://www.evan.kim/projects';
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
                                TextSpan(
                                  text: "music, ",
                                  style: TextStyle(
                                    fontFamily: 'Aptos',
                                    fontSize: 16,
                                    color: const Color(0xffF59D3B)
                                        .withOpacity(0.8),
                                    fontWeight: FontWeight.w100,
                                    letterSpacing: 1.3,
                                    wordSpacing: 1.1,
                                    height: 1.7,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () async {
                                      const urlString =
                                          'https://www.evan.kim/music';
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
                                  text: "and ",
                                ),
                                TextSpan(
                                  text: "thoughts.",
                                  style: TextStyle(
                                    fontFamily: 'Aptos',
                                    fontSize: 16,
                                    color: const Color(0xffF59D3B)
                                        .withOpacity(0.8),
                                    fontWeight: FontWeight.w100,
                                    letterSpacing: 1.3,
                                    wordSpacing: 1.1,
                                    height: 1.7,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () async {
                                      const urlString =
                                          'https://www.evan.kim/thoughts';
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
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 45.0),
                      const Subtitle(
                          content:
                              "* i love things kept lowercase and that is how i jot down memos, and since i'm using this as my journal, most things here will be all-lowercase!"),
                      const SizedBox(height: 65.0),
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
