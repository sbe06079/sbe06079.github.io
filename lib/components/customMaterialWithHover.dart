import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomMaterialWithHover extends StatefulWidget {
  final String imageUrl;
  final destinationPage; // Instead of a URL, use a Widget for the destination page
  final String stringPhrase;
  final double imageWidth;

  CustomMaterialWithHover({
    required this.imageUrl,
    required this.destinationPage,
    required this.stringPhrase,
    required this.imageWidth,
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
          onTap: () async {
            if (widget.destinationPage is Widget) {
              // If destinationPage is a Widget, navigate to the page
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => widget.destinationPage),
              );
            } else {
              if (await canLaunchUrl(widget.destinationPage)) {
                // Launch the URL
                await launchUrl(widget.destinationPage);
              } else {
                throw 'Could not launch ${widget.destinationPage}';
              }
            }
          },
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          child: SizedBox(
            height: 90,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 200),
              opacity: isHovered ? 0.9 : 0.5,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
                    child:
                        Image.asset(widget.imageUrl, height: widget.imageWidth),
                  ),
                  const SizedBox(width: 10.0),
                  Text(
                    widget.stringPhrase,
                    style: const TextStyle(
                      fontFamily: 'AppleSD',
                      fontSize: 24,
                      color: Color(0xffFAFAFA),
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
