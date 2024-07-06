import 'package:flutter/material.dart';
//import 'package:web/subPages/thoughts.dart';
import 'components/footerComponent.dart';
//import 'package:url_launcher/url_launcher.dart';
import 'components/customMaterialWithHover.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'components/aParagraph.dart';
//import 'components/subtitle.dart';

import 'components/aHeader.dart';

//import 'subPages/career.dart';

//import 'subPages/thoughts.dart';

//import 'subPages/projects.dart';
//import 'subPages/music.dart';

//import 'dart:math' as math;

import 'package:go_router/go_router.dart';

//import 'package:flutter/gestures.dart';

//import 'components/website_colors.dart';

//import 'components/make_pastel.dart';

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
                      mainAxisAlignment:
                          MediaQuery.of(context).size.width > 1480
                              ? MainAxisAlignment.center
                              : MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MediaQuery.of(context).size.width > 1480
                            ? const SizedBox(width: 0.0)
                            : SizedBox(
                                width:
                                    (MediaQuery.of(context).size.width < 855.0)
                                        ? (MediaQuery.of(context).size.width *
                                            0.075)
                                        : (MediaQuery.of(context).size.width *
                                            .15)),
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
                                FadeEffect(duration: Duration(seconds: 2)),
                              ],
                              child: Image.asset(
                                'assets/evanBitmoji_cutoff.png',
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
                      const SizedBox(height: 65.0),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Spacer(),
                            AHeader(
                              headerText: "Hello! I'm Evan.",
                              alignment:
                                  MediaQuery.of(context).size.width > 1480
                                      ? TextAlign.center
                                      : TextAlign.left,
                            ),
                            const Spacer(),
                          ]),
                      const SizedBox(height: 45.0),
                      Animate(
                        effects: const [
                          FadeEffect(duration: Duration(seconds: 1)),
                        ],
                        child: AParagraph(
                          content: MediaQuery.of(context).size.width > 1480
                              ? "I'm a senior at Duke studying Stats, CompSci, & Econ.\nI was born in Korea, first came to the States \nwhen I was six, moved a lot in between.\n(Spent roughly half-half at this point)\n"
                              : "I'm a senior at Duke studying Stats, CompSci, & Econ. I was born in Korea, first came to the States when I was six, moved a lot in between. (Spent roughly half-half at this point)\n",
                          alignment: MediaQuery.of(context).size.width > 1480
                              ? TextAlign.center
                              : TextAlign.left,
                        ),
                      ),
                      const SizedBox(height: 45.0),
                      Center(
                        child: MediaQuery.of(context).size.width > 1480
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .center, // Align items to the start for screens wider than 1480px
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Animate(
                                        effects: const [
                                          FadeEffect(
                                              duration: Duration(seconds: 2)),
                                        ],
                                        child: CustomMaterialWithHover(
                                          imageUrl: 'assets/career.png',
                                          actionToDoOnTap: () async {
                                            context.go("/career");
                                          },
                                          stringPhrase: 'Career',
                                          imageWidth: 28.0,
                                        ),
                                      ),
                                      const SizedBox(height: 15.0),
                                      Animate(
                                        effects: const [
                                          FadeEffect(
                                              duration: Duration(seconds: 3)),
                                        ],
                                        child: CustomMaterialWithHover(
                                          imageUrl: 'assets/coding.png',
                                          actionToDoOnTap: () async {
                                            context.go("/projects");
                                          },
                                          stringPhrase: 'Projects',
                                          imageWidth: 28.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 45.0),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Animate(
                                        effects: const [
                                          FadeEffect(
                                              duration: Duration(seconds: 4)),
                                        ],
                                        child: CustomMaterialWithHover(
                                          imageUrl: 'assets/music.png',
                                          actionToDoOnTap: () async {
                                            context.go("/music");
                                          },
                                          stringPhrase: 'Music',
                                          imageWidth: 28.0,
                                        ),
                                      ),
                                      const SizedBox(height: 15.0),
                                      Animate(
                                        effects: const [
                                          FadeEffect(
                                              duration: Duration(seconds: 5)),
                                        ],
                                        child: CustomMaterialWithHover(
                                          imageUrl: 'assets/thoughts.png',
                                          actionToDoOnTap: () async {
                                            context.go("/thoughts");
                                          },
                                          stringPhrase: 'Thoughts',
                                          imageWidth: 28.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            : MediaQuery.of(context).size.width > 950
                                ? Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Animate(
                                        effects: const [
                                          FadeEffect(
                                              duration: Duration(seconds: 2)),
                                        ],
                                        child: CustomMaterialWithHover(
                                          imageUrl: 'assets/career.png',
                                          actionToDoOnTap: () async {
                                            context.go("/career");
                                          },
                                          stringPhrase: 'Career',
                                          imageWidth: 28.0,
                                        ),
                                      ),
                                      const SizedBox(width: 70.0),
                                      Animate(
                                        effects: const [
                                          FadeEffect(
                                              duration: Duration(seconds: 3)),
                                        ],
                                        child: CustomMaterialWithHover(
                                          imageUrl: 'assets/coding.png',
                                          actionToDoOnTap: () async {
                                            context.go("/projects");
                                          },
                                          stringPhrase: 'Projects',
                                          imageWidth: 28.0,
                                        ),
                                      ),
                                      const SizedBox(width: 70.0),
                                      Animate(
                                        effects: const [
                                          FadeEffect(
                                              duration: Duration(seconds: 4)),
                                        ],
                                        child: CustomMaterialWithHover(
                                          imageUrl: 'assets/music.png',
                                          actionToDoOnTap: () async {
                                            context.go("/music");
                                          },
                                          stringPhrase: 'Music',
                                          imageWidth: 28.0,
                                        ),
                                      ),
                                      const SizedBox(width: 70.0),
                                      Animate(
                                        effects: const [
                                          FadeEffect(
                                              duration: Duration(seconds: 5)),
                                        ],
                                        child: CustomMaterialWithHover(
                                          imageUrl: 'assets/thoughts.png',
                                          actionToDoOnTap: () async {
                                            context.go("/thoughts");
                                          },
                                          stringPhrase: 'Thoughts',
                                          imageWidth: 28.0,
                                        ),
                                      ),
                                    ],
                                  )
                                : MediaQuery.of(context).size.width < 500
                                    ? Row(
                                        children: [
                                          const Spacer(),
                                          Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Animate(
                                                  effects: const [
                                                    FadeEffect(
                                                        duration: Duration(
                                                            seconds: 2)),
                                                  ],
                                                  child:
                                                      CustomMaterialWithHover(
                                                    imageUrl:
                                                        'assets/career.png',
                                                    actionToDoOnTap: () async {
                                                      context.go("/career");
                                                    },
                                                    stringPhrase: 'Career',
                                                    imageWidth: 25.0,
                                                    fontSize: 18.0,
                                                  ),
                                                ),
                                                const SizedBox(height: 10.0),
                                                Animate(
                                                  effects: const [
                                                    FadeEffect(
                                                        duration: Duration(
                                                            seconds: 3)),
                                                  ],
                                                  child:
                                                      CustomMaterialWithHover(
                                                    imageUrl:
                                                        'assets/coding.png',
                                                    actionToDoOnTap: () async {
                                                      context.go("/projects");
                                                    },
                                                    stringPhrase: 'Projects',
                                                    imageWidth: 25.0,
                                                    fontSize: 18.0,
                                                  ),
                                                ),
                                                // Your existing widgets
                                              ]),
                                          const SizedBox(width: 20.0),
                                          Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Animate(
                                                  effects: const [
                                                    FadeEffect(
                                                        duration: Duration(
                                                            seconds: 4)),
                                                  ],
                                                  child:
                                                      CustomMaterialWithHover(
                                                    imageUrl:
                                                        'assets/music.png',
                                                    actionToDoOnTap: () async {
                                                      context.go("/music");
                                                    },
                                                    stringPhrase: 'Music',
                                                    imageWidth: 25.0,
                                                    fontSize: 18.0,
                                                  ),
                                                ),
                                                const SizedBox(height: 10.0),
                                                Animate(
                                                  effects: const [
                                                    FadeEffect(
                                                        duration: Duration(
                                                            seconds: 5)),
                                                  ],
                                                  child:
                                                      CustomMaterialWithHover(
                                                    imageUrl:
                                                        'assets/thoughts.png',
                                                    actionToDoOnTap: () async {
                                                      context.go("/thoughts");
                                                    },
                                                    stringPhrase: 'Thoughts',
                                                    imageWidth: 25.0,
                                                    fontSize: 18.0,
                                                  ),
                                                ),
                                                // Your existing widgets
                                              ]),
                                          const Spacer(),
                                        ],
                                      )
                                    : // Your existing layout for screens narrower than 1000px
                                    Row(
                                        children: [
                                          const Spacer(),
                                          Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Animate(
                                                  effects: const [
                                                    FadeEffect(
                                                        duration: Duration(
                                                            seconds: 2)),
                                                  ],
                                                  child:
                                                      CustomMaterialWithHover(
                                                    imageUrl:
                                                        'assets/career.png',
                                                    actionToDoOnTap: () async {
                                                      context.go("/career");
                                                    },
                                                    stringPhrase: 'Career',
                                                    imageWidth: 28.0,
                                                  ),
                                                ),
                                                const SizedBox(height: 20.0),
                                                Animate(
                                                  effects: const [
                                                    FadeEffect(
                                                        duration: Duration(
                                                            seconds: 3)),
                                                  ],
                                                  child:
                                                      CustomMaterialWithHover(
                                                    imageUrl:
                                                        'assets/coding.png',
                                                    actionToDoOnTap: () async {
                                                      context.go("/projects");
                                                    },
                                                    stringPhrase: 'Projects',
                                                    imageWidth: 28.0,
                                                  ),
                                                ),
                                                // Your existing widgets
                                              ]),
                                          const SizedBox(width: 80.0),
                                          Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Animate(
                                                  effects: const [
                                                    FadeEffect(
                                                        duration: Duration(
                                                            seconds: 4)),
                                                  ],
                                                  child:
                                                      CustomMaterialWithHover(
                                                    imageUrl:
                                                        'assets/music.png',
                                                    actionToDoOnTap: () async {
                                                      context.go("/music");
                                                    },
                                                    stringPhrase: 'Music',
                                                    imageWidth: 28.0,
                                                  ),
                                                ),
                                                const SizedBox(height: 20.0),
                                                Animate(
                                                  effects: const [
                                                    FadeEffect(
                                                        duration: Duration(
                                                            seconds: 5)),
                                                  ],
                                                  child:
                                                      CustomMaterialWithHover(
                                                    imageUrl:
                                                        'assets/thoughts.png',
                                                    actionToDoOnTap: () async {
                                                      context.go("/thoughts");
                                                    },
                                                    stringPhrase: 'Thoughts',
                                                    imageWidth: 28.0,
                                                  ),
                                                ),
                                                // Your existing widgets
                                              ]),
                                          const Spacer(),
                                        ],
                                      ),
                      ),
                      Animate(
                        effects: const [
                          FadeEffect(duration: Duration(seconds: 10)),
                        ],
                        child: SizedBox(
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
                                  fontSize: 17,
                                  color:
                                      const Color(0xffFAFAFA).withOpacity(0.8),
                                  fontWeight: FontWeight.w100,
                                  letterSpacing: 1.3,
                                  wordSpacing: 1.1,
                                  height: 1.7,
                                ),
                                children: <InlineSpan>[
                                  TextSpan(
                                    text: MediaQuery.of(context).size.width >
                                            1480
                                        ? "\n\nThis website will purely be my journal, where I \ncasually document things as I love to constantly learn and grow."
                                        : "\n\nThis website will purely be my journal, where I casually document things as I love to constantly learn and grow.",
                                  ),
                                ],
                              ),
                              textAlign:
                                  MediaQuery.of(context).size.width > 1480
                                      ? TextAlign.center
                                      : TextAlign.left,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 45.0),
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
