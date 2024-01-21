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

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({super.key, required this.title});

  final String title;

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
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
                      context.go("/");
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
            ]),
          ),
          SliverFillRemaining(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment,
                children: [
                  const SizedBox(height: 35.0),
                  const AHeader(headerText: "projects"),
                  const SizedBox(height: 5.0),
                  const Subtitle(
                      content: "(some still in the making, others one-off)"),
                  const SizedBox(height: 35.0),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width < 855.0)
                        ? (MediaQuery.of(context).size.width * 0.86)
                        : (MediaQuery.of(context).size.width * 0.71),
                    child: CustomExpansionPanel(
                      parentPaddingLeft: 0,
                      title: 'Codelingo',
                      isExpanded: isExpandedCodelingo,
                      onTap: () => setState(
                          () => isExpandedCodelingo = !isExpandedCodelingo),
                      child: Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.fromLTRB(14, 0, 14, 0),
                              child: Text.rich(
                                TextSpan(
                                  style: TextStyle(
                                    fontFamily: 'Aptos',
                                    fontSize: 14,
                                    color: const Color(0xffFAFAFA)
                                        .withOpacity(0.8),
                                    fontWeight: FontWeight.w100,
                                    letterSpacing: 1.3,
                                    wordSpacing: 1.1,
                                    height: 1.7,
                                  ),
                                  children: <InlineSpan>[
                                    TextSpan(
                                      text: "Codelingo",
                                      style: TextStyle(
                                        fontFamily: 'Aptos',
                                        fontSize: 15,
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
                                              'https://devpost.com/software/codelingo-84r09m';
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
                                      text:
                                          " is an AI-supported tool (marrying GPT3.5 and DeepL) that helps non-native English speakers learn to code, from learning simple syntax to debugging.",
                                    ),
                                    const TextSpan(text: "\n\n"),
                                    const TextSpan(
                                        text:
                                            "i had come back to campus for my senior year a week-ish late, and my girlfriend wanted me to do a hackathon with her. she said she's worked with these twin engineers (then-sophomores at duke) who are great and us four together would make a great team. i was so so exhausted from catching up with school work and just wanted to \"chill\", but i gave it a go since it's only a weekend-long hackathon."),
                                    const TextSpan(text: "\n\n"),
                                    const TextSpan(
                                        text:
                                            "overall, it was an amazing experience. my main role was an engineer/pm hybrid, assisting the two main engineers in frontend development, creating custom functions in the backend (simple data structure massaging to save time for the main engineers), and bridging my girlfriend's designs with development."),
                                    const TextSpan(text: "\n\n"),
                                    const TextSpan(
                                        text:
                                            "after 36 hours of hacking, i felt that i got a lot more comfortable with TypeScript as i learned a lot from the main engineers, and i've never coded under a time pressure like that so that was a good learning experiene"),
                                    const TextSpan(text: "\n\n"),
                                    const TextSpan(
                                        text:
                                            "in the end, we got super lucky and won 1st place in the Education Track for HackDuke (Code for Good 2023)!\n")
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width < 855.0)
                        ? (MediaQuery.of(context).size.width * 0.86)
                        : (MediaQuery.of(context).size.width * 0.71),
                    child: CustomExpansionPanel(
                      parentPaddingLeft: 0,
                      title: 'Bean',
                      isExpanded: isExpandedBean,
                      onTap: () =>
                          setState(() => isExpandedBean = !isExpandedBean),
                      child: Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.fromLTRB(14, 0, 14, 0),
                              child: Text.rich(
                                TextSpan(
                                  style: TextStyle(
                                    fontFamily: 'Aptos',
                                    fontSize: 14,
                                    color: const Color(0xffFAFAFA)
                                        .withOpacity(0.8),
                                    fontWeight: FontWeight.w100,
                                    letterSpacing: 1.3,
                                    wordSpacing: 1.1,
                                    height: 1.7,
                                  ),
                                  children: <InlineSpan>[
                                    TextSpan(
                                      text: "Bean",
                                      style: TextStyle(
                                        fontFamily: 'Aptos',
                                        fontSize: 15,
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
                                              'https://www.beanapp.xyz';
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
                                      text:
                                          " is, as of now, a webapp that helps college students find roommates, off-campus sublease properties, or sublease tenants, only available to anyone with a valid Duke Net ID. ",
                                    ),
                                    const TextSpan(text: "\n\n"),
                                    const TextSpan(
                                        text:
                                            "i was bored sophomore year and wanted to make a \"tinder for guessing market events\" for one reason or another (if i recall, one of the reasons was that i simply did not have the skills), the team ended up building a webapp that helps people optimize their co-living experience on campus, off campus, during summer internship, etc. the idea came about when i was stuck (again due to lack of my capabilities) and the designer on the team (my girlfriend) floated the idea of a roommate-matching platform. i liked the idea mostly because i could tell building it would teach me so many things i had been wanting to learn abt, but i also did zoom out and realized how much a struggle-topic co-living is to college students."),
                                    const TextSpan(text: "\n\n"),
                                    const TextSpan(
                                        text:
                                            "after a year of on-and-off cycles of building (and resting), with Bean, the team was able to get to be part of Duke Innovation Studio's Spring '23 Cohort and eventually mvp-launched to the Duke community in april-2023, gain a couple hundred users, got meaningful insights, further ideas to work on."),
                                    const TextSpan(text: "\n\n"),
                                    const TextSpan(
                                        text:
                                            "as of now, the service is not active, but i hope to grow this at some point into something useful, if not a fully-launched product."),
                                    const TextSpan(text: "\n\n"),
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width < 855.0)
                        ? (MediaQuery.of(context).size.width * 0.86)
                        : (MediaQuery.of(context).size.width * 0.71),
                    child: CustomExpansionPanel(
                      parentPaddingLeft: 0,
                      title: 'Bareulohsounds.',
                      isExpanded: isExpandedBareuloh,
                      onTap: () => setState(
                          () => isExpandedBareuloh = !isExpandedBareuloh),
                      child: Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.fromLTRB(14, 0, 14, 0),
                              child: Text.rich(
                                TextSpan(
                                  style: TextStyle(
                                    fontFamily: 'Aptos',
                                    fontSize: 14,
                                    color: const Color(0xffFAFAFA)
                                        .withOpacity(0.8),
                                    fontWeight: FontWeight.w100,
                                    letterSpacing: 1.3,
                                    wordSpacing: 1.1,
                                    height: 1.7,
                                  ),
                                  children: <InlineSpan>[
                                    TextSpan(
                                      text: "Bareulohsounds.",
                                      style: TextStyle(
                                        fontFamily: 'Aptos',
                                        fontSize: 15,
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
                                      text:
                                          " is an independent label i co-run with one of my best friends. we're hoping to grow it into a family of independent artists (musicians, poets, painters, etc.) that come together to insprie each other and take turns fundraising from fans for a cause, using artistry as a means.",
                                    ),
                                    const TextSpan(text: "\n\n"),
                                    const TextSpan(
                                        text:
                                            "the name of the label, long story short, comes down to how amazing (to the n-th degree) of a human being Clouds in Seoul (the guy im co-running the label) is. as someone who has been exposed to his stories and music for as long as i can remember, i truly began to realize the power of \"good people attracting to good people\", art and music aside."),
                                    const TextSpan(text: "\n\n"),
                                    const TextSpan(
                                        text:
                                            "songwriting is super fun for me, and i hope to continue working on this for quite a while!"),
                                    const TextSpan(text: "\n"),
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  const SizedBox(height: 15.0),
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
