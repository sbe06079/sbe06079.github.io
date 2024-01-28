//import 'dart:ui';

import 'package:flutter/material.dart';

import 'dart:math' as math;
import 'dart:async';
import 'dart:ui';

import 'package:url_launcher/url_launcher.dart';

import './customMaterialWithHover.dart';

import 'package:flutter_animate/flutter_animate.dart';

//import 'dart:ui' as ui;

class Subtitle extends StatefulWidget {
  const Subtitle({super.key, required this.content});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String content;

  @override
  State<Subtitle> createState() => _SubtitleState();
}

class _SubtitleState extends State<Subtitle> {
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
          widget.content,
          softWrap: true,
          style: TextStyle(
            fontFamily: 'Aptos',
            fontSize: 12,
            color: const Color(0xffFAFAFA).withOpacity(0.8),
            fontWeight: FontWeight.w100,
            letterSpacing: 1.4,
            wordSpacing: 1.1,
            height: 1.7,
            fontStyle: FontStyle.italic,
          ),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
