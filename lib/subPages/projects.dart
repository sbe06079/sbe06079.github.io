import 'package:flutter/material.dart';
import '../components/footerComponent.dart';
import 'package:url_launcher/url_launcher.dart';

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

import 'package:video_player/video_player.dart';

import '../components/website_colors.dart';
import '../components/text_size.dart';

import '../components/topCenterLogo.dart';

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
  bool isExpandedSpotifyShinyApp = false;

  late VideoPlayerController _controllerSpotifyShinyApp;
  late VideoPlayerController _controllerCodelingo;

  @override
  void initState() {
    super.initState();
    _loadStrings();

    _controllerSpotifyShinyApp =
        VideoPlayerController.asset('assets/Spotify_ShinyApp.mov')
          ..initialize().then((_) {
            setState(() {});
            // Start playing the video as soon as the controller is initialized
            _controllerSpotifyShinyApp.play();
            // Set playback speed to 2x
            _controllerSpotifyShinyApp.setPlaybackSpeed(1.5);
            // Enable looping
            _controllerSpotifyShinyApp.setLooping(true);
          });
    _controllerCodelingo = VideoPlayerController.asset('assets/codelingo.mov')
      ..initialize().then((_) {
        setState(() {});
        // Start playing the video as soon as the controller is initialized
        _controllerCodelingo.play();
        // Set playback speed to 2x
        _controllerCodelingo.setPlaybackSpeed(1.5);
        // Enable looping
        _controllerCodelingo.setLooping(true);
      });
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
        title: "projects | evan kim",
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
                              child: TopCenterLogo(),
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
                              child: Image.asset('assets/coding.png',
                                  height: 60.0),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      const AHeader(
                        headerText: "Projects",
                        alignment: TextAlign.left,
                      ),
                      const SizedBox(height: 10.0),
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(14, 15, 14, 0),
                                child: SizedBox(
                                    width: math.max(
                                        MediaQuery.of(context).size.width * 0.4,
                                        200.0),
                                    child: _controllerCodelingo
                                            .value.isInitialized
                                        ? AspectRatio(
                                            aspectRatio: _controllerCodelingo
                                                .value.aspectRatio,
                                            child: VideoPlayer(
                                                _controllerCodelingo),
                                          )
                                        : const Center(
                                            child:
                                                CircularProgressIndicator())),
                              ),
                              const SizedBox(height: 15.0),
                              Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(14, 0, 14, 0),
                                  child: Text.rich(
                                    TextSpan(
                                      style: TextStyle(
                                        fontFamily: 'Aptos',
                                        fontSize: standardTextSize,
                                        //color: const Color(0xffFAFAFA)
                                        //    .withOpacity(0.8),
                                        color: WebsiteColors.websiteBlackText,
                                        fontWeight: FontWeight.w100,
                                        letterSpacing: 1.3,
                                        wordSpacing: 1.1,
                                        height: 1.7,
                                      ),
                                      children: <InlineSpan>[
                                        TextSpan(
                                          text: "Codelingo",
                                          style: const TextStyle(
                                            fontFamily: 'Aptos',
                                            fontSize: standardTextSize,
                                            color:
                                                WebsiteColors.hyperlinkPurple,
                                            fontWeight: FontWeight.w100,
                                            letterSpacing: 1.3,
                                            wordSpacing: 1.1,
                                            height: 2.5,
                                            decoration:
                                                TextDecoration.underline,
                                            decorationColor:
                                                WebsiteColors.hyperlinkPurple,
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
                                                "I had come back to campus for my senior year a week-ish late, and my girlfriend wanted me to do a hackathon with her. She said she's worked with these twin engineers (then-sophomores at duke) who are great and us four together would make a great team. I was so so exhausted from catching up with school work and just wanted to \"chill\", but I gave it a go since it's only a weekend-long hackathon."),
                                        const TextSpan(text: "\n\n"),
                                        const TextSpan(
                                            text:
                                                "Overall, it was an amazing experience. my main role was an engineer/pm hybrid, assisting the two main engineers in frontend development, creating custom functions in the backend (simple data structure massaging to save time for the main engineers), and bridging my girlfriend's designs with development."),
                                        const TextSpan(text: "\n\n"),
                                        const TextSpan(
                                            text:
                                                "After 36 hours of hacking, I felt that I got a lot more comfortable with TypeScript as I learned a lot from the main engineers, and I've never coded under a time pressure like that so that was a good learning experiene"),
                                        const TextSpan(text: "\n\n"),
                                        const TextSpan(
                                            text:
                                                "In the end, we got super lucky and won 1st place in the Education Track for HackDuke (Code for Good 2023)!\n")
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
                              const SizedBox(height: 20.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 23.0),
                                  SizedBox(
                                    height: 55.0,
                                    child: Image.asset(
                                      'assets/bean_logo.png',
                                      // Optionally, you can specify the image width, height, and other properties
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 15.0),
                              Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(14, 0, 14, 0),
                                  child: Text.rich(
                                    TextSpan(
                                      style: TextStyle(
                                        fontFamily: 'Aptos',
                                        fontSize: standardTextSize,
                                        color: WebsiteColors.websiteBlackText,
                                        fontWeight: FontWeight.w100,
                                        letterSpacing: 1.3,
                                        wordSpacing: 1.1,
                                        height: 1.7,
                                      ),
                                      children: <InlineSpan>[
                                        TextSpan(
                                          text: "Bean",
                                          style: const TextStyle(
                                            fontFamily: 'Aptos',
                                            fontSize: standardTextSize,
                                            color:
                                                WebsiteColors.hyperlinkPurple,
                                            fontWeight: FontWeight.w100,
                                            letterSpacing: 1.3,
                                            wordSpacing: 1.1,
                                            height: 2.5,
                                            decoration:
                                                TextDecoration.underline,
                                            decorationColor:
                                                WebsiteColors.hyperlinkPurple,
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
                                                "I was bored sophomore year and wanted to make a \"Tinder for guessing market events\" for one reason or another (if I recall, one of the reasons was that I simply did not have the skills), the team ended up building a webapp that helps people optimize their co-living experience on campus, off campus, during summer internship, etc. The idea came about when I was stuck (again due to lack of my capabilities) and the designer on the team (my girlfriend) floated the idea of a roommate-matching platform. I liked the idea mostly because I could tell building it would teach me so many things I had been wanting to learn about, but I also did zoom out and realized how much a struggle-topic co-living is to college students."),
                                        const TextSpan(text: "\n\n"),
                                        const TextSpan(
                                            text:
                                                "After a year of on-and-off cycles of building (and resting), with Bean, the team was able to get to be part of Duke Innovation Studio's Spring '23 Cohort and eventually mvp-launched to the Duke community in april-2023, gain a couple hundred users, got meaningful insights, further ideas to work on."),
                                        const TextSpan(text: "\n\n"),
                                        const TextSpan(
                                            text:
                                                "As of now, the service is not active, but I hope to grow this at some point into something useful, if not a fully-launched product."),
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
                              const SizedBox(height: 20.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 23.0),
                                  SizedBox(
                                    height: 45.0,
                                    child: Image.asset(
                                      'assets/bareuloh_logo_black.png',
                                      // Optionally, you can specify the image width, height, and other properties
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 15.0),
                              Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(14, 0, 14, 0),
                                  child: Text.rich(
                                    TextSpan(
                                      style: TextStyle(
                                        fontFamily: 'Aptos',
                                        fontSize: standardTextSize,
                                        color: WebsiteColors.websiteBlackText,
                                        fontWeight: FontWeight.w100,
                                        letterSpacing: 1.3,
                                        wordSpacing: 1.1,
                                        height: 1.7,
                                      ),
                                      children: <InlineSpan>[
                                        TextSpan(
                                          text: "Bareulohsounds.",
                                          style: const TextStyle(
                                            fontFamily: 'Aptos',
                                            fontSize: standardTextSize,
                                            color:
                                                WebsiteColors.hyperlinkPurple,
                                            fontWeight: FontWeight.w100,
                                            letterSpacing: 1.3,
                                            wordSpacing: 1.1,
                                            height: 2.5,
                                            decoration:
                                                TextDecoration.underline,
                                            decorationColor:
                                                WebsiteColors.hyperlinkPurple,
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
                                              " is an independent label I co-run with one of my best friends. We're hoping to grow it into a family of independent artists (musicians, poets, painters, etc.) that come together to insprie each other and take turns fundraising from fans for a cause, using artistry as a means.",
                                        ),
                                        const TextSpan(text: "\n\n"),
                                        const TextSpan(
                                            text:
                                                "The name of the label, long story short, comes down to how amazing (to the n-th degree) of a human being Clouds in Seoul (the guy im co-running the label) is. As someone who has been exposed to his stories and music for as long as I can remember, I truly began to realize the power of \"good people attracting to good people\", art and music aside."),
                                        const TextSpan(text: "\n\n"),
                                        const TextSpan(
                                            text:
                                                "Songwriting is super fun for me, and I hope to continue working on this for quite a while!"),
                                        const TextSpan(text: "\n"),
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
                          title: 'Spotify Shiny App',
                          isExpanded: isExpandedSpotifyShinyApp,
                          onTap: () => setState(() =>
                              isExpandedSpotifyShinyApp =
                                  !isExpandedSpotifyShinyApp),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(14, 15, 14, 0),
                                child: SizedBox(
                                    width: math.max(
                                        MediaQuery.of(context).size.width * 0.4,
                                        200.0),
                                    child: _controllerSpotifyShinyApp
                                            .value.isInitialized
                                        ? AspectRatio(
                                            aspectRatio:
                                                _controllerSpotifyShinyApp
                                                    .value.aspectRatio,
                                            child: VideoPlayer(
                                                _controllerSpotifyShinyApp),
                                          )
                                        : const Center(
                                            child:
                                                CircularProgressIndicator())),
                              ),
                              const SizedBox(height: 15.0),
                              Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(14, 0, 14, 0),
                                  child: Text.rich(
                                    TextSpan(
                                      style: TextStyle(
                                        fontFamily: 'Aptos',
                                        fontSize: standardTextSize,
                                        color: WebsiteColors.websiteBlackText,
                                        fontWeight: FontWeight.w100,
                                        letterSpacing: 1.3,
                                        wordSpacing: 1.1,
                                        height: 1.7,
                                      ),
                                      children: <InlineSpan>[
                                        const TextSpan(
                                          text:
                                              "\"Spotify Shiny App: Investigating Factors that Relate to Popularity of Music\" was a final project I did with two other classmates for a statistical computing course at Duke. Using ",
                                        ),
                                        TextSpan(
                                          text: "Shiny,",
                                          style: const TextStyle(
                                            fontFamily: 'Aptos',
                                            fontSize: standardTextSize,
                                            color:
                                                WebsiteColors.hyperlinkPurple,
                                            fontWeight: FontWeight.w100,
                                            letterSpacing: 1.3,
                                            wordSpacing: 1.1,
                                            height: 2.5,
                                            decoration:
                                                TextDecoration.underline,
                                            decorationColor:
                                                WebsiteColors.hyperlinkPurple,
                                          ),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () async {
                                              const urlString =
                                                  'https://cran.r-project.org/web/packages/shiny/index.html';
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
                                              " an open-source package in R, and the Spotify API, we were able to build a web-app using only R and analyze the then-top-50 artists' released works and investigate factors that correlate with various measurements that define popularity of music.",
                                        ),
                                        const TextSpan(text: "\n\n"),
                                        const TextSpan(
                                            text:
                                                "One interesting finding corresponding to our hypothesis was that major keys were, overall, more popular than minor keys, but in the specific genres of electronic and r&b, for a lot of the artists, minor keys were equally (if not more) popular. another interesting (yet obvious but still nice-to-quantify) finding was that the 80-130 tempo (beats-per-minute) range meaningfully captured 50% of the top artists' songs, which Country and Classical releases having the widest spreads."),
                                        const TextSpan(text: "\n\n"),
                                        const TextSpan(
                                            text:
                                                "I had a lot of fun doing this project, and this was pre-GPT. Post-GPT, I've been having thoughts on revamping a similar project (music-related) but with AI involved. hopefully I do end up working on it."),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      //const Subtitle(
                      //    content: "(some still in the making, others one-off)"),
                      const SizedBox(height: 15.0),

                      const SizedBox(height: 15.0),
                      const SizedBox(height: 15.0),
                      const SizedBox(height: 15.0),
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
