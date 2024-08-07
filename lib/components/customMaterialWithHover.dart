import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web/components/website_colors.dart';

class CustomMaterialWithHover extends StatefulWidget {
  final String imageUrl;
  final Function
      actionToDoOnTap; // Instead of a URL, use a Widget for the destination page
  final String stringPhrase;
  final double imageWidth;
  final double fontSize;

  CustomMaterialWithHover({
    required this.imageUrl,
    required this.actionToDoOnTap,
    required this.stringPhrase,
    required this.imageWidth,
    this.fontSize = 22,
  });

  @override
  _CustomMaterialWithHoverState createState() =>
      _CustomMaterialWithHoverState();
}

class _CustomMaterialWithHoverState extends State<CustomMaterialWithHover> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            isHovered = true;
          });
        },
        onExit: (_) {
          setState(() {
            isHovered = false;
          });
        },
        child: InkWell(
          onTap: () => widget.actionToDoOnTap(),
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          child: SizedBox(
            height: 45,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 200),
              opacity: isHovered ? 0.9 : 0.5,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 1, 0, 0),
                    child:
                        Image.asset(widget.imageUrl, height: widget.imageWidth),
                  ),
                  const SizedBox(width: 10.0),
                  Text(
                    widget.stringPhrase,
                    style: TextStyle(
                      fontFamily: 'AppleSD',
                      fontSize: widget.fontSize,
                      //color: const Color(0xffFAFAFA),
                      color: WebsiteColors.websiteBlackText,

                      fontWeight: FontWeight.normal,
                      letterSpacing: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
