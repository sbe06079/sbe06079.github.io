//import 'dart:ui';

import 'package:flutter/material.dart';

import 'dart:math' as math;
import 'dart:async';
import 'dart:ui';

import 'package:url_launcher/url_launcher.dart';
import 'package:web/components/website_colors.dart';

import './customMaterialWithHover.dart';

import 'package:flutter_animate/flutter_animate.dart';

//import 'dart:ui' as ui;

class AHeader extends StatefulWidget {
  const AHeader({super.key, required this.headerText, required this.alignment});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String headerText;
  final TextAlign alignment;

  @override
  State<AHeader> createState() => _AHeaderState();
}

class _AHeaderState extends State<AHeader> {
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
    return SizedBox(
      width: (MediaQuery.of(context).size.width < 855.0)
          ? (MediaQuery.of(context).size.width * 0.85)
          : (MediaQuery.of(context).size.width * 0.7),
      child: Animate(
        effects: const [
          FadeEffect(duration: Duration(seconds: 5)),
        ],
        child: Text(
          widget.headerText,
          softWrap: true,
          style: TextStyle(
            fontFamily: 'Aptos',
            fontSize: 31,
            //color: const Color(0xffFAFAFA).withOpacity(0.85),
            color: WebsiteColors.websiteBlackText,
            fontWeight: FontWeight.w900,
            letterSpacing: 1.4,
            wordSpacing: 1.1,
            height: 1.7,
          ),
          textAlign: widget.alignment,
        ),
      ),
    );
  }
}
