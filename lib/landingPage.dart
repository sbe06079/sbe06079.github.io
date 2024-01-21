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
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(height: 25.0),
              Center(
                child: Material(
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
                      child: Text(
                        "evan kim",
                        style: TextStyle(
                          fontFamily: 'Edensor',
                          fontSize: 27,
                          color: const Color(0xffFAFAFA).withOpacity(0.9),
                          fontWeight: FontWeight.w500,
                          letterSpacing: 6,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(35.0, 0, 35.0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(width: 20.0),
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
                    const SizedBox(width: 33.0),
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
                    const SizedBox(width: 33.0),
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
                    const SizedBox(width: 33.0),
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
                            MediaQuery.of(context).size.height * 0.3, 194.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 35.0),
                  const AHeader(headerText: "hello! i'm evan."),
                  const SizedBox(height: 35.0),
                  const AParagraph(
                      content:
                          "i am a senior at duke majoring in statistics and computer science and minoring in economics."),
                  const SizedBox(height: 35.0),
                  const AParagraph(
                      content:
                          "i was born in korea, first came to the states when i was six, moved a lot between the two countries. (overall, spent roughly half-half at this point)"),
                  const SizedBox(height: 35.0),
                  const AParagraph(
                      content:
                          "one day, i was bored at a hackathon and found out that this domain was very cheap - so, i thought 'why not buy it!' i plan to use this website as my journal, where i casually document things i learn as i love to constantly learn and grow"),
                  const SizedBox(height: 35.0),
                  const SizedBox(height: 35.0),
                  const Subtitle(
                      content:
                          "(i love things kept lowercase and that is how i jot down memos, and since i'm using this as my journal, most things here will be all-lowercase. please excuse the lack of formality and eloquency at times!)"),
                  const SizedBox(height: 35.0),
                  const FooterComponent(title: "footer"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
