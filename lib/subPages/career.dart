import 'package:flutter/material.dart';
import '../components/footerComponent.dart';
import 'package:url_launcher/url_launcher.dart';
import '../components/customMaterialWithHover.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../landingPage.dart';

//import '../components/aParagraph.dart';

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

import '../components/topCenterLogo.dart';

class CareerPage extends StatefulWidget {
  const CareerPage({super.key, required this.title});

  final String title;

  @override
  State<CareerPage> createState() => _CareerPageState();
}

class _CareerPageState extends State<CareerPage> {
  bool isExpandedGS = false;
  bool isExpandedGSOverall = false;
  bool isExpandedGSHabits = false;
  bool isExpandedGSLessons = false;
  bool isExpandedGSElsewhere = false;

  bool isExpandedAnthos = false;
  bool isExpandedAnthosOverall = false;
  bool isExpandedAnthosHabits = false;
  bool isExpandedAnthosLessons = false;
  bool isExpandedAnthosElsewhere = false;

  bool isExpandedArmy = false;
  bool isExpandedArmyOverall = false;
  bool isExpandedArmyHabits = false;
  bool isExpandedArmyLessons = false;
  bool isExpandedArmyElsewhere = false;
  //int overallLeftPadding = 0;

  bool isExpandedAware = false;
  bool isExpandedAwareOverall = false;
  bool isExpandedAwareHabits = false;
  bool isExpandedAwareLessons = false;
  bool isExpandedAwareElsewhere = false;

  bool isExpandedTickle = false;
  bool isExpandedTickleOverall = false;
  bool isExpandedTickleHabits = false;
  bool isExpandedTickleLessons = false;
  bool isExpandedTickleElsewhere = false;

  String gsOverall1 = '';
  String gsOverall2 = '';
  String gsHabits1 = '';
  String gsHabits2 = '';
  String gsLessons = '';
  String gsElsewhere = '';

  String anthosOverall = '';
  String anthosHabits = '';
  String anthosLessons = '';
  String anthosElsewhere = '';

  String armyOverall = '';
  String armyHabits = '';
  String armyLessons = '';
  String armyElsewhere = '';

  String awareOverall = '';
  String awareHabits = '';
  String awareLessons = '';
  String awareElsewhere = '';

  String tickleOverall = '';
  String tickleHabits = '';
  String tickleLessons = '';
  String tickleElsewhere = '';

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
    gsOverall1 = await rootBundle.loadString('assets/content/gsOverall1.txt');
    gsOverall2 = await rootBundle.loadString('assets/content/gsOverall2.txt');
    gsHabits1 = await rootBundle.loadString('assets/content/gsHabits1.txt');
    gsHabits2 = await rootBundle.loadString('assets/content/gsHabits2.txt');
    gsLessons = await rootBundle.loadString('assets/content/gsLessons.txt');
    gsElsewhere = await rootBundle.loadString('assets/content/gsElsewhere.txt');

    anthosOverall =
        await rootBundle.loadString('assets/content/anthosOverall.txt');
    anthosHabits =
        await rootBundle.loadString('assets/content/anthosHabits.txt');
    anthosLessons =
        await rootBundle.loadString('assets/content/anthosLessons.txt');
    anthosElsewhere =
        await rootBundle.loadString('assets/content/anthosElsewhere.txt');

    armyOverall = await rootBundle.loadString('assets/content/armyOverall.txt');
    armyHabits = await rootBundle.loadString('assets/content/armyHabits.txt');
    armyLessons = await rootBundle.loadString('assets/content/armyLessons.txt');
    armyElsewhere =
        await rootBundle.loadString('assets/content/armyElsewhere.txt');

    awareOverall =
        await rootBundle.loadString('assets/content/awareOverall.txt');
    awareHabits = await rootBundle.loadString('assets/content/awareHabits.txt');
    awareLessons =
        await rootBundle.loadString('assets/content/awareLessons.txt');
    awareElsewhere =
        await rootBundle.loadString('assets/content/awareElsewhere.txt');

    tickleOverall =
        await rootBundle.loadString('assets/content/tickleOverall.txt');
    tickleHabits =
        await rootBundle.loadString('assets/content/tickleHabits.txt');
    tickleLessons =
        await rootBundle.loadString('assets/content/tickleLessons.txt');
    tickleElsewhere =
        await rootBundle.loadString('assets/content/tickleElsewhere.txt');
    setState(() {}); // To rebuild widget with updated data.
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        color: const Color(0xFF202123),
        title: "career | evan kim",
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
                              child: Image.asset('assets/career_black.png',
                                  height: 60.0),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20.0),

                      const AHeader(
                        headerText: "Career",
                        alignment: TextAlign.left,
                      ),
                      const SizedBox(height: 10.0),
                      // SUMMER AT GOLDMAN
                      SizedBox(
                        width: (MediaQuery.of(context).size.width < 855.0)
                            ? (MediaQuery.of(context).size.width * 0.86)
                            : (MediaQuery.of(context).size.width * 0.71),
                        child: CustomExpansionPanel(
                          parentPaddingLeft: 0,
                          title: 'S&T Summer Analyst @ Goldman Sachs',
                          isExpanded: isExpandedGS,
                          onTap: () =>
                              setState(() => isExpandedGS = !isExpandedGS),
                          child: Column(
                            children: [
                              const SizedBox(height: 5.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 26.0),
                                  SizedBox(
                                    height: 60.0,
                                    child: Image.asset(
                                      'assets/gs_logo.png',
                                      // Optionally, you can specify the image width, height, and other properties
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 5.0),
                              CustomExpansionPanel(
                                parentPaddingLeft: 13,
                                title: 'Overall Thoughts',
                                isExpanded: isExpandedGSOverall,
                                onTap: () => setState(() =>
                                    isExpandedGSOverall = !isExpandedGSOverall),
                                child: Padding(
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
                                            text: gsOverall1,
                                          ),
                                          TextSpan(
                                            text: "this video",
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
                                                    'https://www.youtube.com/watch?v=osI9YRLXVDg';
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
                                            text:
                                                gsOverall2, // continue your text
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                              CustomExpansionPanel(
                                parentPaddingLeft: 13,
                                title: 'Habits Formed',
                                isExpanded: isExpandedGSHabits,
                                onTap: () => setState(() =>
                                    isExpandedGSHabits = !isExpandedGSHabits),
                                child: Padding(
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
                                            children: <TextSpan>[
                                              TextSpan(
                                                text:
                                                    gsHabits1, // text before "right"
                                              ),
                                              const TextSpan(
                                                text:
                                                    "right", // the word to italicize
                                                style: TextStyle(
                                                    fontStyle:
                                                        FontStyle.italic),
                                              ),
                                              TextSpan(
                                                text: gsHabits2,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                              CustomExpansionPanel(
                                parentPaddingLeft: 13,
                                title: 'Lessons Learned',
                                isExpanded: isExpandedGSLessons,
                                onTap: () => setState(() =>
                                    isExpandedGSLessons = !isExpandedGSLessons),
                                child: Padding(
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
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: gsLessons,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                              CustomExpansionPanel(
                                parentPaddingLeft: 13,
                                title: "How It's Helping Me Elsewhere",
                                isExpanded: isExpandedGSElsewhere,
                                onTap: () => setState(() =>
                                    isExpandedGSElsewhere =
                                        !isExpandedGSElsewhere),
                                child: Padding(
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
                                            children: <TextSpan>[
                                              TextSpan(text: gsElsewhere),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
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
                          title: 'VC Summer Analyst @ Anthos Capital',
                          isExpanded: isExpandedAnthos,
                          onTap: () => setState(
                              () => isExpandedAnthos = !isExpandedAnthos),
                          child: Column(
                            children: [
                              const SizedBox(height: 10.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 26.0),
                                  SizedBox(
                                    height: 40.0,
                                    /*
                                      child: ColorFiltered(
                                      
                                        colorFilter: const ColorFilter.mode(
                                          Color(0xfffffafa), // Target color
                                          BlendMode.srcIn, // Blend mode
                                        ),
                                        child: Image.asset(
                                          'assets/anthos_logo.png',
                                          // Optionally, specify the image width, height, and other properties here
                                        ),
                                      )),
                                      */
                                    child: Image.asset(
                                      'assets/anthos_logo.png',
                                      // Optionally, specify the image width, height, and other properties here
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10.0),
                              CustomExpansionPanel(
                                parentPaddingLeft: 13,
                                title: 'Overall Thoughts',
                                isExpanded: isExpandedAnthosOverall,
                                onTap: () => setState(() =>
                                    isExpandedAnthosOverall =
                                        !isExpandedAnthosOverall),
                                child: Padding(
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
                                            text: anthosOverall,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                              CustomExpansionPanel(
                                parentPaddingLeft: 13,
                                title: 'Habits Formed',
                                isExpanded: isExpandedAnthosHabits,
                                onTap: () => setState(() =>
                                    isExpandedAnthosHabits =
                                        !isExpandedAnthosHabits),
                                child: Padding(
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
                                            text: anthosHabits,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                              CustomExpansionPanel(
                                parentPaddingLeft: 13,
                                title: 'Lessons Learned',
                                isExpanded: isExpandedAnthosLessons,
                                onTap: () => setState(() =>
                                    isExpandedAnthosLessons =
                                        !isExpandedAnthosLessons),
                                child: Padding(
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
                                            text: anthosLessons,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                              CustomExpansionPanel(
                                parentPaddingLeft: 13,
                                title: "How It's Helping Me Elsewhere",
                                isExpanded: isExpandedAnthosElsewhere,
                                onTap: () => setState(() =>
                                    isExpandedAnthosElsewhere =
                                        !isExpandedAnthosElsewhere),
                                child: Padding(
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
                                            text: anthosElsewhere,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      // aware
                      SizedBox(
                        width: (MediaQuery.of(context).size.width < 855.0)
                            ? (MediaQuery.of(context).size.width * 0.86)
                            : (MediaQuery.of(context).size.width * 0.71),
                        child: CustomExpansionPanel(
                          parentPaddingLeft: 0,
                          title: 'Sergeant @ Republic of Korea Army',
                          isExpanded: isExpandedArmy,
                          onTap: () =>
                              setState(() => isExpandedArmy = !isExpandedArmy),
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
                                      'assets/army_logo.png',
                                      // Optionally, you can specify the image width, height, and other properties
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 15.0),
                              CustomExpansionPanel(
                                parentPaddingLeft: 13,
                                title: 'Overall Thoughts',
                                isExpanded: isExpandedArmyOverall,
                                onTap: () => setState(() =>
                                    isExpandedArmyOverall =
                                        !isExpandedArmyOverall),
                                child: Padding(
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
                                            text: armyOverall,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                              CustomExpansionPanel(
                                parentPaddingLeft: 13,
                                title: 'Habits Formed',
                                isExpanded: isExpandedArmyHabits,
                                onTap: () => setState(() =>
                                    isExpandedArmyHabits =
                                        !isExpandedArmyHabits),
                                child: Padding(
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
                                            text: armyHabits,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                              CustomExpansionPanel(
                                parentPaddingLeft: 13,
                                title: 'Lessons Learned',
                                isExpanded: isExpandedArmyLessons,
                                onTap: () => setState(() =>
                                    isExpandedArmyLessons =
                                        !isExpandedArmyLessons),
                                child: Padding(
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
                                            text: armyLessons,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                              CustomExpansionPanel(
                                parentPaddingLeft: 13,
                                title: "How It's Helping Me Elsewhere",
                                isExpanded: isExpandedArmyElsewhere,
                                onTap: () => setState(() =>
                                    isExpandedArmyElsewhere =
                                        !isExpandedArmyElsewhere),
                                child: Padding(
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
                                            text: armyElsewhere,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
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
                          title: 'Strategy @ Aware',
                          isExpanded: isExpandedAware,
                          onTap: () => setState(
                              () => isExpandedAware = !isExpandedAware),
                          child: Column(
                            children: [
                              const SizedBox(height: 20.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 23.0),
                                  SizedBox(
                                    height: 50.0,
                                    child: Image.asset(
                                      'assets/aware_logo.png',
                                      // Optionally, you can specify the image width, height, and other properties
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 15.0),
                              CustomExpansionPanel(
                                parentPaddingLeft: 13,
                                title: 'Overall Thoughts',
                                isExpanded: isExpandedAwareOverall,
                                onTap: () => setState(() =>
                                    isExpandedAwareOverall =
                                        !isExpandedAwareOverall),
                                child: Padding(
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
                                            text: awareOverall,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                              CustomExpansionPanel(
                                parentPaddingLeft: 13,
                                title: 'Habits Formed',
                                isExpanded: isExpandedAwareHabits,
                                onTap: () => setState(() =>
                                    isExpandedAwareHabits =
                                        !isExpandedAwareHabits),
                                child: Padding(
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
                                            text: awareHabits,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                              CustomExpansionPanel(
                                parentPaddingLeft: 13,
                                title: 'Lessons Learned',
                                isExpanded: isExpandedAwareLessons,
                                onTap: () => setState(() =>
                                    isExpandedAwareLessons =
                                        !isExpandedAwareLessons),
                                child: Padding(
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
                                            text: awareLessons,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                              CustomExpansionPanel(
                                parentPaddingLeft: 13,
                                title: "How It's Helping Me Elsewhere",
                                isExpanded: isExpandedAwareElsewhere,
                                onTap: () => setState(() =>
                                    isExpandedAwareElsewhere =
                                        !isExpandedAwareElsewhere),
                                child: Padding(
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
                                            text: awareElsewhere,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
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
                          title: 'Product Manager @ Tickle',
                          isExpanded: isExpandedTickle,
                          onTap: () => setState(
                              () => isExpandedTickle = !isExpandedTickle),
                          child: Column(
                            children: [
                              const SizedBox(height: 20.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 23.0),
                                  SizedBox(
                                    height: 25.0,
                                    child: Image.asset(
                                      'assets/tickle_logo.png',
                                      // Optionally, you can specify the image width, height, and other properties
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 15.0),
                              CustomExpansionPanel(
                                parentPaddingLeft: 13,
                                title: 'Overall Thoughts',
                                isExpanded: isExpandedTickleOverall,
                                onTap: () => setState(() =>
                                    isExpandedTickleOverall =
                                        !isExpandedTickleOverall),
                                child: Padding(
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
                                            text: tickleOverall,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                              CustomExpansionPanel(
                                parentPaddingLeft: 13,
                                title: 'Habits Formed',
                                isExpanded: isExpandedTickleHabits,
                                onTap: () => setState(() =>
                                    isExpandedTickleHabits =
                                        !isExpandedTickleHabits),
                                child: Padding(
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
                                            text: tickleHabits,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                              CustomExpansionPanel(
                                parentPaddingLeft: 13,
                                title: 'Lessons Learned',
                                isExpanded: isExpandedTickleLessons,
                                onTap: () => setState(() =>
                                    isExpandedTickleLessons =
                                        !isExpandedTickleLessons),
                                child: Padding(
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
                                            text: tickleLessons,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                              CustomExpansionPanel(
                                parentPaddingLeft: 13,
                                title: "How It's Helping Me Elsewhere",
                                isExpanded: isExpandedTickleElsewhere,
                                onTap: () => setState(() =>
                                    isExpandedTickleElsewhere =
                                        !isExpandedTickleElsewhere),
                                child: Padding(
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
                                            text: tickleElsewhere,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 35.0),
                      //const Subtitle(
                      //    content:
                      //        "(things i consider are more \"professional\" and official among some of the experiences i had.)"),

                      const SizedBox(height: 35.0),
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
