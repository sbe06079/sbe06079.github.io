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
                      Uri _url = Uri.parse('https://evan.kim');
                      if (!(await launchUrl(_url))) {
                        throw 'Could not launch $_url';
                      }
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
                  const AHeader(headerText: "music"),
                  const SizedBox(height: 5.0),
                  const Subtitle(
                      content:
                          "(more on bareulohsounds.com, nothing here for now!)"),
                  const SizedBox(height: 35.0),
                  const SizedBox(height: 105.0),
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
